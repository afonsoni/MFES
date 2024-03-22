# Evaluation exercise (Modelling in Propositional Logic and First-Order Logic)

The aim is to color a sequence of 9 tiles juxtaposed with a palette of 4 colors: blue, green, gray and black. The coloring of the tiles must be done according to the following rules:

1. Each tile has a single color.
2. The tiles at the ends must have the same color.
3. All colors must be used.
4. The middle tile can only be painted gray or black.
5. The penultimate tile in the sequence must be black, unless the last one is painted in black.
6. Tiles in a row cannot be painted in the same color.
7. If the first tile is green and the third is not black, the second will have to be gray or black.
8. The tiles in the third and seventh position can only be painted blue or green.

We intend to encode this problem in propositional logic and use Z3 to answer some questions.

1. Code the problem in a solver and check that the set of formulas is consistent.
2. With the help of the solver, decide whether the following statements are true:
    - (a) If the first tile is black, the penultimate tile must be blue.
    - (b) One of the last two tiles must be black.
    - (c) Any of the first three tiles could be blue.
3. Add code to the program in order to know all the colorings that are possible do to the tiles. How many?

---

Translated PDF [trab-SAT.pdf](trab-SAT.pdf)
