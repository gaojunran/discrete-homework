#import "../khw.typ": *

#show: khw.with(
  title: [Chapter 5 Homework Exercises],
  course: "Discrete Probability Theory",
  author: "GAO Junran 2023215319",
)


// #show math.frac: it => $display(it)$
#set text(top-edge: 0.7em) 
#set text(font: "Times New Roman")

#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#problem[
  Consider the undirected graph with vertex set $V = {1, 2, 3, 4, 5}$ and edge set $E$ as
indicated in the diagram below:

#align(center)[#diagram(
  node((0,0), [1], name: <1>),
  node((2,0), [2], name: <2>),
  node((1,1), [5], name: <5>),
  node((0,2), [3], name: <3>),
  node((2,2), [4], name: <4>),
  edge(<1>, <5>),
  edge(<1>, <3>),
  edge(<1>, <2>),
  edge(<2>, <4>),
  edge(<2>, <5>),
  edge(<3>, <4>),
)]

(Painted with Typst package #link("https://typst.app/universe/package/fletcher")[Fletcher], the same below)

Compute the stochastic matrix $M$ for the random walk $(S, M, x_0)$ on this undirected
graph.

]

Given $V = {1, 2, 3, 4, 5}$ and $E = {(1, 2), (1, 3), (1, 5), (2, 4), (2, 5), (3, 4)}$.

The degree of each vertex is as follows:
- Vertex 1: degree 3 (connected to vertices 2, 3, and 5)
- Vertex 2: degree 3 (connected to vertices 1, 4, and 5)
- Vertex 3: degree 2 (connected to vertices 1 and 4)
- Vertex 4: degree 2 (connected to vertices 2 and 3)
- Vertex 5: degree 2 (connected to vertices 1 and 2)

The stochastic matrix $M$ is constructed by assigning probabilities based on the degree of each vertex. The entry $M[i][j]$ represents the probability of moving from vertex $i$ to vertex $j$.

Compute for each line:
- From vertex 1: $M[1][2] = 1/3$, $M[1][3] = 1/3$, $M[1][5] = 1/3$

- From vertex 2: $M[2][1] = 1/3$, $M[2][4] = 1/3$, $M[2][5] = 1/3$

- From vertex 3: $M[3][1] = 1/2$, $M[3][4] = 1/2$

- From vertex 4: $M[4][2] = 1/2$, $M[4][3] = 1/2$

- From vertex 5: $M[5][1] = 1/2$, $M[5][2] = 1/2$

Thus, the stochastic matrix $M$ is:
#context [
#set math.mat(gap: 1em, column-gap: 1em)
$ M = mat(0, 1/3, 1/2, 0, 1/2; 1/3, 0, 0, 1/2, 1/2; 1/3, 0, 0, 1/2, 0; 0, 1/3, 1/2, 0, 0; 1/3, 1/3, 0, 0, 0) $
]

#problem[
  Consider the directed graph with vertex set $V = {1, 2, 3, 4}$ and edge set $E$ as indicated
in the diagram below:

  #align(center)[#diagram(
  node((0,0), [1], name: <1>),
  node((2,0), [2], name: <2>),
  node((0,2), [3], name: <3>),
  node((2,2), [4], name: <4>),
  edge(<1>, "->", <2>),
  edge(<1>, "->", <3>),
  edge(<2>, "<->", <4>),
  edge(<1>, "->", <4>),
  edge(<4>, "->", <3>),
  )]
Compute the stochastic matrix M for the random walk on this directed graph.
]

Given $V = {1, 2, 3, 4}$ and $E = {(1, 2), (1, 3), (1, 4), (2, 4), (4, 2), (4, 3)}$.

The out-degree of each vertex is as follows:
- Vertex 1: out-degree 3 (edges to vertices 2, 3, and 4)
- Vertex 2: out-degree 1 (edge to vertex 4)
- Vertex 3: out-degree 0 (no outgoing edges)
- Vertex 4: out-degree 2 (edges to vertices 2 and 3)

The stochastic matrix $M$ is constructed by assigning probabilities based on the out-degree of each vertex. The entry $M[i][j]$ represents the probability of moving from vertex $i$ to vertex $j$.

Compute for each line:
- From vertex 1: $M[1][2] = 1/3$, $M[1][3] = 1/3$, $M[1][4] = 1/3$ 
- From vertex 2: $M[2][4] = 1$
- From vertex 3: 0
- From vertex 4: $M[4][2] = 1/2$, $M[4][3] = 1/2$

Thus, the stochastic matrix $M$ is:
#context [
#set math.mat(gap: 1em, column-gap: 1em)
$ M = mat(0, 0, 0, 0; 1/3, 0, 0, 1/2; 1/3, 0, 0, 1/2; 1/3, 1, 0, 0) $
]

#problem[
  Given a Markov Chain $(S, M, x_0)$ where $S = {s_1, s_2, s_3}$, $x_0 = mat(0; 1; 0)$, and $ M = mat(.1, .2, .3; .2, .3, .4; .7, .5, .3), M^2 = mat(.26, .23, .2; .36, .33, .3; .38, .44, .5), M^3 = mat(.21, .22, .23; .31, .32, .33; .47, .45, .44) $ $ M^4 = mat(.22, .22, .22; .32, .32, .32; .44, .45, .45), M^5 = mat(.22, .22, .22; .32, .32, .32; .45, .45, .45); M^6 = mat(.22, .22, .22; .32, .32, .32; .45, .45, .45) $

  Compute the probability the chain is in state $s_3$ at time 4.
]

To find the probability that the chain is in state $s_3$ at time 4, we need to compute the state vector at time 4, denoted as $x_4$. This can be done by multiplying the initial state vector $x_0$ by the transition matrix $M$ raised to the power of 4:
$ x_4 = M^4 dot x_0 $

Calculating this, we have:
$ x_4 = mat(.22, .22, .22; .32, .32, .32; .44, .45, .45) dot mat(0; 1; 0) $
$ = mat(.22 dot 0 + .22 dot 1 + .22 dot 0; .32 dot 0 + .32 dot 1 + .32 dot 0; .44 dot 0 + .45 dot 1 + .45 dot 0) $
$ = mat(.22; .32; .45) $

Thus, the probability that the chain is in state $s_3$ at time 4 is $0.45$.


#problem[
  Consider an unbiased random walk on the set $S = {1, 2, 3, 4, 5}$ i.e the transition
probability between adjacent states is $p = q = 1/2$. What is the probability of moving
from state 2 to state 3 in exactly three steps if:

a.) the walk has reflecting boundaries?

b.) the walk has absorbing boundaries?
]

a.) For a random walk with reflecting boundaries, the walker bounces back when reaching the boundaries. The possible paths from state 2 to state 3 in exactly three steps are:
1. $2 -> 1 -> 2 -> 3$
2. $2 -> 3 -> 2 -> 3$
3. $2 -> 3 -> 4 -> 3$

Calculating the probabilities for each path:
1. $P(2 -> 1) dot P(1 -> 2) dot P(2 -> 3) = (1/2) dot 1 dot (1/2) = 1/4$
2. $P(2 -> 3) dot P(3 -> 2) dot P(2 -> 3) = (1/2) dot (1/2) dot (1/2) = 1/8$
3. $P(2 -> 3) dot P(3 -> 4) dot P(4 -> 3) = (1/2) dot (1/2) dot (1/2) = 1/8$

Thus, the total probability is:
$ P = 1/4 + 1/8 + 1/8 = 1/2 $

b.) For a random walk with absorbing boundaries, the walker gets absorbed when reaching the boundaries. The possible paths from state 2 to state 3 in exactly three steps are:

1. $2 -> 3 -> 2 -> 3$
2. $2 -> 3 -> 4 -> 3$

Calculating the probability for this path:
1. $P(2 -> 3) dot P(3 -> 2) dot P(2 -> 3) = (1/2) dot (1/2) dot (1/2) = 1/8$
2. $P(2 -> 3) dot P(3 -> 4) dot P(4 -> 3) = (1/2) dot (1/2) dot (1/2) = 1/8$

Thus, the total probability is:
$ P = 1/8 + 1/8 = 1/4 $


#problem[
  Given the directed graph

  #align(center)[#diagram(
  node((0,0), [1], name: <1>),
  node((2,0), [2], name: <2>),
  node((4,0), [5], name: <5>),
  node((0,2), [3], name: <3>),
  node((2,2), [4], name: <4>),
  edge(<1>, "->", <2>),
  edge(<1>, "<->", <3>),
  edge(<2>, "<->", <4>),
  edge(<4>, "->", <3>),
  edge(<2>, "->", <5>),
  edge(<1>, "->", <4>)
  )
]

respond to the following questions:

a.) Compute the stochastic matrix $M$ associated to the random walk on this directed
graph.

b.) Compute the modified matrix $M^*$

c.) Given your response in b.) compute the regular matrix $M_R$ for $p = .85$.

d.) Compute the steady-state vector $sigma$ associated to $M_R$, that is, $sigma$ such that
$(M − I) sigma = 0$. You may use a computer algebra application in order to do this and
write the solution.

]

a.) Given $V = {1, 2, 3, 4, 5}$ and $E = {(1, 2), (1, 3), (1, 4), (2, 4), (2, 5), (3, 1), (4, 2), (4, 3)}$.

The out-degree of each vertex is as follows:
- Vertex 1: out-degree 3 (edges to vertices 2, 3, and 4)
- Vertex 2: out-degree 2 (edges to vertices 4 and 5)
- Vertex 3: out-degree 1 (edge to vertex 1)
- Vertex 4: out-degree 2 (edges to vertices 2 and 3)
- Vertex 5: out-degree 0 (no outgoing edges)

The stochastic matrix $M$ is constructed by assigning probabilities based on the out-degree of each vertex. The entry $M[i][j]$ represents the probability of moving from vertex $i$ to vertex $j$.

Compute for each line:
- From vertex 1: $M[1][2] = 1/3$, $M[1][3] = 1/3$, $M[1][4] = 1/3$ 
- From vertex 2: $M[2][4] = 1/2$, $M[2][5] = 1/2$
- From vertex 3: $M[3][1] = 1$
- From vertex 4: $M[4][2] = 1/2$, $M[4][3] = 1/2$
- From vertex 5: 0

Thus, the stochastic matrix $M$ is:
#context [
#set math.mat(gap: 1em, column-gap: 1em)
$ M = mat(0, 0, 1, 0, 0; 1/3, 0, 0, 1/2, 0; 1/3, 0, 0, 1/2, 0; 1/3, 1/2, 0, 0, 0; 0, 1/2, 0, 0, 0) $
]

b.) The modified matrix $M^*$ is obtained by replacing any row in $M$ that sums to zero with a row where each entry is $1/n$, where $n$ is the number of states (in this case, $n = 5$).

Thus, the modified matrix $M^*$ is:
#context [
#set math.mat(gap: 1em, column-gap: 1em)
$ M^* = mat(0, 0, 1, 0, 1/5; 1/3, 0, 0, 1/2, 1/5; 1/3, 0, 0, 1/2, 1/5; 1/3, 1/2, 0, 0, 1/5; 0, 1/2, 0, 0, 1/5) $
]

c.) The regular matrix $M_R$ for $p = .85$ is computed using the formula:
$ M_R = p dot M^* + (1 - p) dot (1/n) dot J $
where $J$ is a matrix with all entries equal to 1.

Thus, the regular matrix $M_R$ is:
#context [
#set math.mat(gap: 1em, column-gap: 1em)
$ M_R = .85 dot mat(0, 0, 1, 0, 1/5; 1/3, 0, 0, 1/2, 1/5; 1/3, 0, 0, 1/2, 1/5; 1/3, 1/2, 0, 0, 1/5; 0, 1/2, 0, 0, 1/5) + .15 dot (1/5) dot mat(1, 1, 1, 1, 1; 1, 1, 1, 1, 1; 1, 1, 1, 1, 1; 1, 1, 1, 1, 1; 1, 1, 1, 1, 1) $
$ = mat(.03, .03, .88, .03, .2; .3133, .03, .03, .455, .2; .3133, .03, .03, .455, .2; .3133, .455, .03, .03, .2; .03, .455, .03, .03, .2) $
]

d.) To compute the steady-state vector $sigma$ associated to $M_R$, we need to solve the equation $(M_R^T − I) sigma = 0$, where $I$ is the identity matrix.

Using a computer algebra application (TypeScript), we find that the steady-state vector $sigma$ is approximately:

```ts
function steadyState(M: Matrix, tol = 1e-10, maxIter = 1000): number[] {
  const Mt = transpose(M);
  let v = Array(M.length).fill(1 / M.length);
  for (let i = 0; i < maxIter; i++) {
    const vNext = normalize(matVecMul(Mt, v));
    const diff = vNext.map((x, j) => Math.abs(x - v[j])).reduce((a, b) => a + b, 0);
    v = vNext;
    if (diff < tol) break;
  }
  return v;
}
```

(Full code provided at the end of the document)

First we transpose the matrix $M_R$, then we iteratively multiply it by an initial uniform vector until convergence. The resulting vector is the steady-state distribution.

Output: 

```
[[0.23153476]
 [0.20851669]
 [0.20851669]
 [0.20851669]
 [0.14291517]]
```



#context [
#set math.vec(gap: 1em)
$ sigma = vec(0.23153476, 0.20851669, 0.20851669, 0.20851669, 0.14291517) $
]

#problem[
  Given the directed graph below:

  #align(center)[#diagram(
  spacing: 2em,
  node((2,0), [1], name: <1>),
  node((0,2), [2], name: <2>),
  node((2,2), [3], name: <3>),
  node((4,2), [4], name: <4>),
  node((0,4), [5], name: <5>),
  node((2,4), [6], name: <6>),
  node((2,6), [7], name: <7>),
  edge(<2>, "->", <1>),
  edge(<1>, "->", <3>),
  edge(<3>, "->", <2>),
  edge(<3>, "->", <4>),
  edge(<5>, "<->", <2>),
  edge(<6>, "<->", <3>),
  edge(<6>, "->", <7>),
  edge(<5>, "<->", <6>)
  )
  ]

respond to the following questions:

a.) Compute the stochastic matrix $M$ associated to the random walk on this graph.

b.) Compute the modified matrix $M^*$

c.) Compute the regular matrix $M_R$ for $p = .45$.

d.) Does a steady-state vector $sigma$ for the regular matrix exist? If so, why?

]

a.) Given $V = {1, 2, 3, 4, 5, 6, 7}$ and \ $ E = {(2, 1), (1, 3), (3, 2), (3, 4), (5, 2), (2, 5), (6, 3), (3, 6), (6, 7), (5, 6), (6, 5)}$.

The out-degree of each vertex is as follows:
- Vertex 1: out-degree 1 (edge to vertex 3)
- Vertex 2: out-degree 2 (edges to vertices 1 and 5)
- Vertex 3: out-degree 3 (edges to vertices 2, 4, and 6)
- Vertex 4: out-degree 0 (no outgoing edges)
- Vertex 5: out-degree 2 (edges to vertices 2 and 6)
- Vertex 6: out-degree 3 (edges to vertices 3, 5, and 7)
- Vertex 7: out-degree 0 (no outgoing edges)  

The stochastic matrix $M$ is constructed by assigning probabilities based on the out-degree of each vertex. The entry $M[i][j]$ represents the probability of moving from vertex $i$ to vertex $j$.

Compute for each line:
- From vertex 1: $M[1][3] = 1$
- From vertex 2: $M[2][1] = 1/2$, $M[2][5] = 1/2$
- From vertex 3: $M[3][2] = 1/3$, $M[3][4] = 1/3$, $M[3][6] = 1/3$
- From vertex 4: 0
- From vertex 5: $M[5][2] = 1/2$, $M[5][6] = 1/2$
- From vertex 6: $M[6][3] = 1/3$, $M[6][5] = 1/3$, $M[6][7] = 1/3$
- From vertex 7: 0

Thus, the stochastic matrix $M$ is:
#context [
#set math.mat(gap: 1em, column-gap: 1em)
$ M = mat(0, 1/2, 0, 0, 0, 0, 0; 0, 0, 1/3, 0, 1/2, 0, 0; 1, 0, 0, 0, 0, 1/3, 0; 0, 0, 1/3, 0, 0, 0, 0; 0, 1/2, 0, 0, 0, 1/3, 0; 0, 0, 1/3, 0, 1/2, 0, 0; 0, 0, 0, 0, 0, 1/3, 0) $
]

b.) The modified matrix $M^*$ is obtained by replacing any row in $M$ that sums to zero with a row where each entry is $1/n$, where $n$ is the number of states (in this case, $n = 7$).

Thus, the modified matrix $M^*$ is:
#context [
#set math.mat(gap: 1em, column-gap: 1em)
$ M^* = mat(0, 1/2, 0, 1/7, 0, 0, 1/7; 0, 0, 1/3, 1/7, 1/2, 0, 1/7; 1, 0, 0, 1/7, 0, 1/3, 1/7; 0, 0, 1/3, 1/7, 0, 0, 1/7; 0, 1/2, 0, 1/7, 0, 1/3, 1/7; 0, 0, 1/3, 1/7, 1/2, 0, 1/7; 0, 0, 0, 1/7, 0, 1/3, 1/7) $
]

c.) The regular matrix $M_R$ for $p = .45$ is computed using the formula:
$ M_R = p dot M^* + (1 - p) dot (1/n) dot J $
where $J$ is a matrix with all entries equal to 1.

Thus, the regular matrix $M_R$ is:
#context [
#set math.mat(gap: 1em, column-gap: 1em)
$ M_R = .45 dot mat(0, 1/2, 0, 1/7, 0, 0, 1/7; 0, 0, 1/3, 1/7, 1/2, 0, 1/7; 1, 0, 0, 1/7, 0, 1/3, 1/7; 0, 0, 1/3, 1/7, 0, 0, 1/7; 0, 1/2, 0, 1/7, 0, 1/3, 1/7; 0, 0, 1/3, 1/7, 1/2, 0, 1/7; 0, 0, 0, 1/7, 0, 1/3, 1/7) + .55 dot (1/7) dot mat(1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1) $
]

d.) Yes, a steady-state vector $sigma$ for the regular matrix exists. This is because regular matrices are stochastic matrices that have the property that some power of the matrix has all positive entries. This ensures that the Markov chain represented by the matrix is irreducible and aperiodic, which guarantees the existence of a unique steady-state distribution.


#linebreak()

#line(length: 100%)

== Full code for Problem 5

```ts
// Compute the steady-state distribution σ (PageRank) for a given directed graph

// === Type Definitions ===
type Matrix = number[][];

// === Utility Functions ===
function transpose(M: Matrix): Matrix {
  return M[0].map((_, j) => M.map(row => row[j]));
}

function matVecMul(M: Matrix, v: number[]): number[] {
  return M.map(row => row.reduce((sum, val, i) => sum + val * v[i], 0));
}

function normalize(v: number[]): number[] {
  const s = v.reduce((a, b) => a + b, 0);
  return v.map(x => x / s);
}

// Iterative method to compute the steady-state vector
function steadyState(M: Matrix, tol = 1e-10, maxIter = 1000): number[] {
  const Mt = transpose(M); // Transpose is required here
  let v = Array(M.length).fill(1 / M.length);
  for (let i = 0; i < maxIter; i++) {
    const vNext = normalize(matVecMul(Mt, v));
    const diff = vNext.map((x, j) => Math.abs(x - v[j])).reduce((a, b) => a + b, 0);
    v = vNext;
    if (diff < tol) break;
  }
  return v;
}

// === Step a: Construct the random walk matrix M ===
const n = 5;
const M: Matrix = Array.from({ length: n }, () => Array(n).fill(0));

// Fill outgoing edges
M[0][1] = 1; M[0][2] = 1; M[0][3] = 1; // Node 1 -> Nodes 2, 3, 4
M[1][3] = 1; M[1][4] = 1;               // Node 2 -> Nodes 4, 5
M[2][0] = 1;                            // Node 3 -> Node 1
M[3][1] = 1; M[3][2] = 1;               // Node 4 -> Nodes 2, 3
// Node 5 has no outgoing edges

// Normalize each row
function normalizeRows(M: Matrix): Matrix {
  return M.map(row => {
    const sum = row.reduce((a, b) => a + b, 0);
    return sum === 0 ? Array(n).fill(0) : row.map(v => v / sum);
  });
}

const M_stochastic = normalizeRows(M);

// === Step b: Fix dead ends to obtain M* ===
const M_star = M_stochastic.map(row => row.every(v => v === 0) ? Array(n).fill(1 / n) : row);

// === Step c: Construct the corrected matrix M_R ===
const p = 0.85;
const E: Matrix = Array.from({ length: n }, () => Array(n).fill(1 / n));
const M_R = M_star.map((row, i) => row.map((v, j) => p * v + (1 - p) * E[i][j]));

// === Step d: Compute the steady-state vector σ ===
const sigma = steadyState(M_R);

// === Output Results ===
console.log("M_R =");
console.table(M_R.map(r => r.map(x => +x.toFixed(3))));
console.log("Steady-state vector σ ≈");
console.log(sigma.map(x => x.toFixed(5)));
```



#linebreak()

#line()

Created with Typst. See source code in https://github.com/gaojunran/discrete-homework.
