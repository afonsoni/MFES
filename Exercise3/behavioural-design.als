// Recall the hash table Alloy model,
// now with mutable lists inside the buckets.

sig Bucket {
	var head : lone Node
}
sig Node {
	key : one Key,
	var prox : lone Node
} {

}
sig Key {
	hash : one Hash
}
sig Hash {}

// Specify the operation of inserting a node
// in the hash table. The node should be 
// inserted at the head of a bucket.
// If the operation only works well when the
// hash of the new node does not exist in the
// table you get Two points. If it always 
// works well you get Five points. Use the
// respective commands to check how many
// points you have.

fun allNodes[]: set Node {
    { n: Node | n in Bucket.head.*prox }
}

pred insert[n : Node] {

    n not in allNodes[]

    checkTwo[n] or checkFive[n]
}

pred checkTwo[n : Node] {

    // guard
    n.key.hash not in Bucket.head.key.hash

    // effect
    some b: Bucket | head' = head + b->n
    prox' = prox
}

pred checkFive[n : Node] {

    // guard
    n.key.hash in Bucket.head.key.hash

    // effect
    one b: Bucket {
        n.key.hash = b.head.key.hash
        head' = head + b->n - b->(b.head)
        prox' = prox + n->(b.head)
    }

}