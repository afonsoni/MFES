sig Bucket {
	head : lone Node
}

sig Node {
	key : one Key,
	prox : lone Node
}

sig Key {
	hash : one Hash
}

sig Hash {}

pred Invs {
	// Specify the properties that characterize 
	// hash tables using closed addressing (separate 
	// chaining) for collision resolution.

	// The points you will get is proportional to the 
	// number of correct properties. To check how many
	// points you have so far you can use the different
 	// commands. For example, if check Three is correct 
	// you will have at least 3 points.
    // The maximum is 5 points.

	// Be careful to not overspecify! 
	// If you specify a property that is not valid in 
	// these hash tables you get 0 points, 
    // even if you have some correct properties.
	// To check if you are not overspecifying you can use 
	// command NoOverspecification. If you have an invalid
	// property this command will return a valid hash table 
	// that you specification is not accepting.

  	// Property 1: A bucket must have at most 1 head node
    all b : Bucket | #(b.head) <= 1 
    all b : Bucket | some b

  	// Property 2: A node cannot point to itself
  	// all n : Node | not n -> n in prox
    no n : Node | n in n.prox

  	// Property 3: A node has to come from a bucket or from another node
  	// all n : Node | one n0 : Node | one b : Bucket | (n0 -> n in prox) or (b -> n in head)
  	// all n : Node | one n0 : Node | one b : Bucket | (n0 in prox.n) or (b in head.n)
    all n : Node | (one prox.n) or (one head.n)

  	// Property 4: All keys must have a node
    all k: Key | some n: Node | n.key = k

	// Property 5: Each node has a key and each key has a hash
	// all n : Node | one k : Key | one h : Hash | n -> k in key | k -> h in hash
	// all n : Node | one k : Key | one h : Hash | k in n.key | h in k.hash
	// all n : Node | one h : Hash | h in n.key.hash
	all n : Node | one n.key.hash

  	// Property 6: All nodes in a bucket must have the same key
    all n1, n2: Node | some n2.prox implies (n1 in n2.^prox implies (n1.key.hash = n2.key.hash and n1.key != n2.key))

	// Property 7: Keys cannot be shared between two buckets
    all b1, b2: Bucket, n1, n2: Node | b1 != b2 and n1 in b1.head and n2 in b2.head implies n1.key.hash != n2.key.hash
}