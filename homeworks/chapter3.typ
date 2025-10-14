#import "../khw.typ": *

#show: khw.with(
  title: [Chapter 3 Homework Exercises],
  course: "Discrete Probability Theory",
  author: "GAO Junran 2023215219",
)

#show math.frac: it => $display(it)$
#set text(top-edge: 0.7em) 

#problem[
  The graph of a probability function of a discrete random variable $X$ is given by the following values:
$ p(0) = .54 $
$ p(1) = .16 $
$ p(2) = .06 $
$ p(3) = .04 $
$ p(4) = .20 $

  i) Compute $E(X)$.

  ii) Compute $V(X)$.

]

i) The expected value of $X$ is given by:
$ E(X) = sum_(x in {0,1,2,3,4}) x dot p(x) = 0 dot 0.54 + 1 dot 0.16 + 2 dot 0.06 + 3 dot 0.04 + 4 dot 0.20 \ = 0 + 0.16 + 0.12 + 0.12 + 0.80 = 1.20 $

ii) The variance of $X$ is given by:
$ V(X) = E(X^2) - (E(X))^2 $
First, we need to compute $E(X^2)$:
$ E(X^2) = sum_(x in {0,1,2,3,4}) x^2 dot p(x) = 0^2 dot 0.54 + 1^2 dot 0.16 + 2^2 dot 0.06 + 3^2 dot 0.04 + 4^2 dot 0.20 \ = 0 + 0.16 + 0.24 + 0.36 + 3.20 = 3.96 $
Now, we can calculate the variance:
$ V(X) = E(X^2) - (E(X))^2 = 3.96 - (1.20)^2 = 3.96 - 1.44 = 2.52 $

#problem[
  The graph of a probability function of a discrete random variable X is given by the
following values:
$ p(1) = .05 $
$ p(2) = .10 $
$ p(3) = .12 $
$ p(4) = .30 $
$ p(5) = .30 $
$ p(6) = .11 $
$ p(7) = .01 $
$ p(8) = .01 $
i) Compute $E(X)$.

ii) Compute $V(X)$.

iii) Compute $p(X ≤ 5)$.

iv) Compute $p(X > 3)$.
]

i) The expected value of $X$ is given by:
$ E(X) = sum_(x in {1,2,3,4,5,6,7,8}) x dot p(x) \ = 1 dot 0.05 + 2 dot 0.10 + 3 dot 0.12 + 4 dot 0.30 + 5 dot 0.30 + 6 dot 0.11 + 7 dot 0.01 + 8 dot 0.01 \ = 0.05 + 0.20 + 0.36 + 1.20 + 1.50 + 0.66 + 0.07 + 0.08 = 4.12 $

ii) The variance of $X$ is given by:
$ V(X) = E(X^2) - (E(X))^2 $
First, we need to compute $E(X^2)$:
$ E(X^2) = sum_(x in {1,2,3,4,5,6,7,8}) x^2 dot p(x) \ = 1^2 dot 0.05 + 2^2 dot 0.10 + 3^2 dot 0.12 + 4^2 dot 0.30 + 5^2 dot 0.30 + 6^2 dot 0.11 + 7^2 dot 0.01 + 8^2 dot 0.01 \ = 0.05 + 0.40 + 1.08 + 4.80 + 7.50 + 3.96 + 0.49 + 0.64 = 18.92 $
Now, we can calculate the variance:
$ V(X) = E(X^2) - (E(X))^2 = 18.92 - (4.12)^2 = 18.92 - 16.9744 = 1.9456 $

iii) To compute $p(X ≤ 5)$, we sum the probabilities for $X$ values from 1 to 5:
$ p(X ≤ 5) = p(1) + p(2) + p(3) + p(4) + p(5) \ = 0.05 + 0.10 + 0.12 + 0.30 + 0.30 = 0.87 $

iv) To compute $p(X > 3)$, we sum the probabilities for $X$ values greater than 3:
$ p(X > 3) = p(4) + p(5) + p(6) + p(7) + p(8) \ = 0.30 + 0.30 + 0.11 + 0.01 + 0.01 = 0.73 $

#problem[
  The graph of the probability function of a discrete random variable X is given by the values:
$ p(0) = .073 $
$ p(1) = .117 $
$ p(2) = .258 $
$ p(3) = .322 $
$ p(4) = .230 $
i) Compute $E(X)$.

ii) Compute $V (X)$.
]

i) The expected value of $X$ is given by:
$ E(X) = sum_(x in {0,1,2,3,4}) x dot p(x) \ = 0 dot 0.073 + 1 dot 0.117 + 2 dot 0.258 + 3 dot 0.322 + 4 dot 0.230 \ = 0 + 0.117 + 0.516 + 0.966 + 0.92 = 2.519 $

ii) The variance of $X$ is given by:
$ V(X) = E(X^2) - (E(X))^2 $
First, we need to compute $E(X^2)$:
$ E(X^2) = sum_(x in {0,1,2,3,4}) x^2 dot p(x) \ = 0^2 dot 0.073 + 1^2 dot 0.117 + 2^2 dot 0.258 + 3^2 dot 0.322 + 4^2 dot 0.230 \ = 0 + 0.117 + 1.032 + 2.898 + 3.68 = 7.727 $
Now, we can calculate the variance:
$ V(X) = E(X^2) - (E(X))^2 = 7.727 - (2.519)^2 = 7.727 - 6.345361 = 1.3816 $

#problem[
  Suppose that $X_1, X_2, X_3$ are independent random variables. Suppose further that
$ E(X_1) = 4 $
$ E(X_2) = 5 $
$ E(X_3) = 7 $, and
$ V(X_1) = 4 $
$ V(X_2) = 1/2 $
$ V(X_3) = sqrt(2) $.

i.) Compute $E(4_1 + pi X_2 + e X_3 + 13)$

ii.) Compute $E(X_1X_3 + X_2)$

iii.) Compute $V(sqrt(2)X_2 + sqrt(3)X_3 + 17)$

]

i) Using the linearity of expectation, we have:
$ E(4X_1 + pi X_2 + e X_3 + 13) = 4E(X_1) + pi E(X_2) + e E(X_3) + 13 \ = 4 dot 4 + pi dot 5 + e dot 7 + 13  = 16 + 5pi + 7e + 13  = 29 + 5pi + 7e $

ii) Since $X_1$ and $X_3$ are independent, we have:
$ E(X_1X_3 + X_2) = E(X_1X_3) + E(X_2) = E(X_1)E(X_3) + E(X_2) \ = 4 dot 7 + 5 = 28 + 5 = 33 $

iii) Using the properties of variance, we have:
$ V(sqrt(2)X_2 + sqrt(3)X_3 + 17) = (sqrt(2))^2 V(X_2) + (sqrt(3))^2 V(X_3) \ = 2 dot (1/2) + 3 dot sqrt(2) = 1 + 3sqrt(2) $


#linebreak()

#line()

Created with Typst. See source code in https://github.com/gaojunran/discrete-homework.
