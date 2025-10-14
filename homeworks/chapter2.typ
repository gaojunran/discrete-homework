#import "../khw.typ": *

#show: khw.with(
  title: [Chapter 2 Homework Exercises],
  course: "Discrete Probability Theory",
  author: "GAO Junran 2023215319",
)

#show math.frac: it => $display(it)$
#set text(top-edge: 0.7em) 

// Problem 1 {{{1
#problem[
  Equivalence class of permutations of the elements in $S$, where two permutations are equivalent if they produce the same ordered list.

  a) How many words on the set $S = {F,L,U,F,F}$ exist?
  
  b) How many words on the set $S = {R,O,T,O,R}$ exist if $T$ is in the middle?
]

To count the number of distinct words that can be formed using the letters in the set, we can use the formula for permutations of a multiset. The formula is given by: $ n! / (n_1 ! n_2 ! space dots space n_k !) $, where $n$ is the total number of items to arrange, and $n_1, n_2, ..., n_k$ are the frequencies of the distinct items.

a) For the set $S = {F,L,U,F,F}$, we have a total of 5 letters, where $F$ appears 3 times, $L$ appears 1 time, and $U$ appears 1 time. Using the formula, we get:

$ n = 5, n_1 = 3, n_2 = 1, n_3 = 1 $

Number of distinct words = $ 5! / (3! 1! 1!) = 120 / (6 dot 1 dot 1) = 20 $

b) For the set $S = {R,O,T,O,R}$, we have a total of 5 letters, where $R$ appears 2 times, $O$ appears 2 times, and $T$ appears 1 time. Since $T$ is fixed in the middle position, we only need to arrange the remaining 4 letters ($R, R, O, O$) in the other 4 positions. Using the formula, we get:

$ n = 4, n_1 = 2, n_2 = 2 $

Number of distinct words with $T$ in the middle = $ 4! / (2! 2!) = 24 / (2 dot 2) = 6 $

#problem[
  How many numbers can be made each using all the numerals in the set $S = {1, 2, 2, 3, 3, 3, 0}$?
]

Using the formula for permutations of a multiset, we have a total of 7 digits, where $1$ appears 1 time, $2$ appears 2 times, $3$ appears 3 times, and $0$ appears 1 time. However, since we are forming numbers, we cannot have $0$ as the leading digit. 

First calculate the total number of arrangements = $ 7! / (1! 2! 3! 1!) = 5040 / (1 dot 2 dot 6 dot 1) = 420 $

Then calculate the arrangements with $0$ as the leading digit. If $0$ is the leading digit, we are left with the digits $1, 2, 2, 3, 3, 3$ to arrange in the remaining 6 positions. The number of arrangements in this case is: $ 6! / (1! 2! 3!) = 720 / (1 dot 2 dot 6) = 60 $

Number of valid numbers = Total arrangements - Arrangements with $0$ as leading digit = $ 420 - 60 = 360 $

#problem[
  Five persons, A, B, C, D, and E, are going to speak at a meeting.

  a) In how many orders can they take their turns speaking if B must speak (sometime) after A?

  b) In how many orders can they take their turns speaking if B must speak immediately after A?
]

(a) 5 people can be arranged in $5! = 120$ different ways. In half of these arrangements, B will speak after A, and in the other half, A will speak after B. Therefore, the number of orders in which B speaks after A is: $ 120 / 2 = 60 $

(b) If B must speak immediately after A, we can treat A and B as a single unit. This block can be arranged with the other three persons (C, D, and E) in $ 4! = 24 $ different ways. 

#problem[
  At a table in a restaurant, six people ordered roast beef, three ordered turkey, two ordered pork chops, and one ordered flounder fish. Of course, no two portions of any of these items are absolutely identical. The 12 servings are brought from the kitchen. In how many ways can they be distributed so that everyone gets their correct order?
]

We can separate the 12 servings into groups based on the orders: 6 roast beef, 3 turkey, 2 pork chops, and 1 flounder fish.

The ways for 6 roast-beef servings can be assigned to the 6 roast-beef customers is $6! = 720$.

The ways for 3 turkey servings can be assigned to the 3 turkey customers is $3! = 6$.

The ways for 2 pork-chop servings can be assigned to the 2 pork-chop customers is $2! = 2$.

The ways for 1 flounder-fish serving can be assigned to the 1 flounder-fish customer is $1! = 1$.

Therefore, the total number of ways to distribute the servings is: $ 6! dot 3! dot 2! dot 1! = 720 dot 6 dot 2 dot 1 = 8640 $.

#problem[
  a) In how many ways can eight people sit at a lunch counter with eight stools?

  b) In how many ways can four couples sit at the lunch counter if each sits next to one another?

  c) In how many ways can eight people sit at a round table?

_remark_: The idea of a lunch counter is that it is a single row of stools against a counter. So the stools are arranged in a straight line. The intermediate stools have a neighbor on both the left and the right. The stools at the ends have either no left neighbor or no right neighbor.
]

(a) This is a permutation problem where we need to arrange 8 people in 8 distinct positions (stools). The number of ways to do this is given by $ P(8,8) = 8! = 40320 $.

(b) We can treat each couple as a single unit or block. Therefore, we have 4 blocks to arrange. The number of ways to arrange these 4 blocks is $4! = 24$. However, within each block, the two individuals can switch places, which gives us an additional factor of $2$ for each couple. Since there are 4 couples, we have an additional factor of $2^4 = 16$. Therefore, the total number of arrangements is: $ 4! dot 2^4 = 24 dot 16 = 384 $.

(c) When arranging people around a round table, we can fix one person's position to account for the rotational symmetry. This means we only need to arrange the remaining 7 people. The number of ways to arrange 7 people is given by $ (8-1)! = 7! = 5040 $.

#problem[
  How many non-negative integer solutions are there to the equation
$x_1 + x_2 + x_3 + x_4 = 30$?
]

This is a r-Unordering problem, we can use the "stars and bars" theorem to find the number of non-negative integer solutions to the equation. The formula for the number of solutions is given by:
$ C(n + r - 1, r - 1) $, where $n$ is the total sum we want (30 in this case), and $r$ is the number of variables (4 in this case).

Using the formula, we have:
$ n = 30, r = 4 $
Number of solutions = $ C(30 + 4 - 1, 4 - 1) = C(33, 3) = 33! / (3! dot 30!) = (33 dot 32 dot 31) / (3 dot 2 dot 1) = 5456 $

#problem[
  A camera shop stocks eight different types of batteries.

  a) How many ways can a total inventory of 30 batteries be distributed among the eight different types of batteries?

  b) Assuming that one of the types of batteries is A76, how many ways can a total inventory of 30 batteries be distributed among the eight different types if the inventory must include at least four A76 batteries?
]

(a) This question can be solved using the "stars and bars" theorem. We need to find the number of non-negative integer solutions to the equation $x_1 + x_2 + x_3 + x_4 + x_5 + x_6 + x_7 + x_8 = 30$, where each $x_i$ represents the number of batteries of type $i$. Using the formula $ C(n + r - 1, r - 1) $, where $n$ is the total number of batteries (30) and $r$ is the number of types (8), we have:

Number of ways = $ C(30 + 8 - 1, 8 - 1) = C(37, 7) = 37! / (7! dot 30!) = (37 dot 36 dot 35 dot 34 dot 33 dot 32 dot 31) / (7 dot 6 dot 5 dot 4 dot 3 dot 2 dot 1) = 10295472 $

(b) The bar should not be placed in the first four positions, so we can place a bar in one of the remaining 26 positions. This means we need to find the number of non-negative integer solutions to the equation $x_1 + x_2 + x_3 + x_4 + x_5 + x_6 + x_7 + x_8 = 26$, where each $x_i$ represents the number of batteries of type $i$. Using the formula $ C(n + r - 1, r - 1) $, where $n$ is the total number of batteries (26) and $r$ is the number of types (8), we have:

Number of ways = $ C(26 + 8 - 1, 8 - 1) = C(33, 7) = 33! / (7! dot 26!) = (33 dot 32 dot 31 dot 30 dot 29 dot 28 dot 27) / (7 dot 6 dot 5 dot 4 dot 3 dot 2 dot 1) = 4272048 $


#problem[
  Prove that $mat(n; r+1) = (n - r) / (r + 1) mat(n; r)$
by computing the symbol on the left hand side to
be equal to the symbol on the right hand side of the equality.

_HINT_: Compute the left hand side until you get the right hand side with $mat(n; n - r)$
instead,
then use the lecture notes on the binomial theorem section to finish the problem. At
least that’s how I did it.
]

Expand the left hand side:
$ mat(n; r+1) = n! / ((r+1)! (n - (r+1))!) = n! / ((r+1)! (n - r - 1)!) $

Now, let's compute the right hand side:
$ (n - r) / (r + 1) mat(n; r) = (n - r) / (r + 1) (n! / (r! (n - r)!)) = (n - r) n! / ((r + 1) r! (n - r)!) $
$ = n! / ((r + 1)! (n - r - 1)!) $

Thus, we have shown that $ mat(n; r+1) = (n - r) / (r + 1) mat(n; r) $.



#problem[
  a) Completely simplify $sum^10_(i = 0) mat(10; i) 2^i$
  
  b) Expand $(1 - x)^6$ and simplify.

  c) Expand $(x + x^(-1))^5$ and simplify.
]

(a) According to the binomial theorem, we have:
$ (1 + x)^n = sum^n_(i = 0) mat(n; i) x^i $
Setting $n = 10$ and $x = 2$, we get:
$ (1 + 2)^10 = sum^10_(i = 0) mat(10; i) 2^i $
$ 3^10 = sum^10_(i = 0) mat(10; i) 2^i $

(b) Using the binomial theorem, we can expand $(1 - x)^6$ as follows:

$ (1 - x)^6 = sum^6_(i = 0) mat(6; i) (1)^(6-i) (-x)^i $
$ = sum^6_(i = 0) mat(6; i) (-1)^i x^i $
$ = mat(6; 0) (-1)^0 x^0 + mat(6; 1) (-1)^1 x^1 + mat(6; 2) (-1)^2 x^2 + mat(6; 3) (-1)^3 x^3 \ + mat(6; 4) (-1)^4 x^4 + mat(6; 5) (-1)^5 x^5 + mat(6; 6) (-1)^6 x^6 $
$ = 1 - 6x + 15x^2 - 20x^3 + 15x^4 - 6x^5 + x^6 $

(c) Using the binomial theorem, we can expand $(x + x^(-1))^5$ as follows:
$ (x + x^(-1))^5 = sum^5_(i = 0) mat(5; i) (x)^(5-i) (x^(-1))^i $
$ = sum^5_(i = 0) mat(5; i) x^(5-2i) $
$ = mat(5; 0) x^5 + mat(5; 1) x^3 + mat(5; 2) x^1 + mat(5; 3) x^(-1) + mat(5; 4) x^(-3) + mat(5; 5) x^(-5) $
$ = x^5 + 5 x^3 + 10 x^1 + 10 x^(-1) + 5 x^(-3) + x^(-5) $


#linebreak()

#line()

Created with Typst. See source code in https://github.com/gaojunran/discrete-homework.
