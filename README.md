# MFES

Formal Methods in Software Engineering (Métodos Formais em Engenharia de Software)

Check the course web page [here](https://haslab.github.io/MFES/)!

## Exercise 1

This project explores applying Propositional Logic and First-Order Logic to solve a tile coloring problem. The goal is to color a sequence of 9 tiles with 4 colors (blue, green, gray, black) according to specific rules. We encode the problem as a set of formulas in propositional logic and use the Z3 solver to:

- Check if there are valid colorings (i.e., if the formula is satisfiable).
- Answer queries about the coloring, like:
    - Does a specific color placement follow from the rules (e.g., "if the first tile is black, must the penultimate be blue?")
    - How many valid colorings exist?

Check exercise [here](Exercise1)

Grade: 5.0/5.0

## Exercise 2

This project involved analyzing an incomplete Alloy4Fun model of hash tables with separate chaining (a collision resolution technique). The goal was to identify missing properties that should hold true for these hash tables. Separate chaining stores keys in buckets, and keys hashing to the same bucket are linked together in a chain.

Check exercise [here](Exercise2)

Grade: 5.0/5.0

## Exercise 3

This exercise builds upon the Alloy4Fun hash table model with separate chaining from Exercise 2. Our focus now is to specify the `insert` operation for adding new nodes to the hash table. This operation needs to handle potential collisions that occur when multiple keys map to the same bucket.

Check exercise [here](Exercise3)

Grade: 5.0/5.0
