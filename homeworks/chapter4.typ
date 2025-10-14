#import "../khw.typ": *

#show: khw.with(
  title: [Chapter 4 Homework Exercises],
  course: "Discrete Probability Theory",
  author: "GAO Junran 2023215319",
)


#show math.frac: it => $display(it)$
#set text(top-edge: 0.7em) 
#set text(font: "Times New Roman")

#problem[
  American Airline flights from Dallas to Chicago arrive on-time 80 % of the time. Suppose 15 flights are randomly selected, and the number of on-time flights are recorded.

  (a) Define the random random variable associated with the experiment of recording
  on-time flights by giving both its definition and its probability mass function.

  (b) Compute the probability exactly 10 flights are on-time.

  (c) Compute the probability that fewer than 10 flights are on-time.

  (d) Compute the probability that at least 10 flights are on-time.

  (e) Compute the probability that between 8 and 10 flights are on-time.

  (f) Compute the expected value of the random variable computed in the first
  question.

  (g) Compute the variance of the random variable computed in the first question.
]

(a) Let the random variable X be the number of on-time flights among 15 randomly selected flights from Dallas to Chicago. The probability mass function of X is given by the binomial distribution $X ~ B(15, 0.8)$:
$ P(X = k) = mat(15; k) (0.8)^k (0.2)^(15-k) $

(b) The probability exactly 10 flights are on-time is:
$ P(X = 10) = mat(15; 10) (0.8)^10 (0.2)^5 approx 0.1032 $

(c) The probability that fewer than 10 flights are on-time is:
$ P(X < 10) = sum_(k=0)^9 P(X = k) approx 0.0611 $

(d) The probability that at least 10 flights are on-time is:
$ P(X >= 10) = 1 - P(X < 10) approx 0.9389 $

(e) The probability that between 8 and 10 flights are on-time is:
$ P(8 <= X <= 10) = sum_(k=8)^10 P(X = k) approx 0.1600 $

Or we can calculate it as:
$ P(8 <= X <= 10) = P(X <= 10) - P(X <= 7) approx 0.9389 - 0.7789 = 0.1600 $

(f) The expected value of the random variable X is:
$ E(X) = n * p = 15 * 0.8 = 12 $

(g) The variance of the random variable X is:
$ "Var"(X) = n * p * (1 - p) = 15 * 0.8 * 0.2 = 2.4 $

#problem[
  According to a study I just made up, the probability a randomly selected individual
will not cover their mouth when sneezing is 20 %. Suppose you sit in public and record
the sneezing habits of 10 randomly selected people.

(a) Define the random variable associated with the experiment of recording the
sneezing habits of 10 randomly selected people by giving both its definition and
its probability mass function.

(b) What is the probability that among 10 randomly selected people exactly 4 do
not cover their mouth when sneezing?

(c) What is the probability that among 10 randomly selected people fewer than 3
do not cover their mouths?

(d) What is the expected value of 10 randomly selected people not covering their
mouths when sneezing?

(e) What is the variance of 10 randomly selected people not covering their mouths
when sneezing?

(f) Suppose you now observe 15 randomly selected people rather than 10-what is
the probability then that at most 2 do not cover their mouths when sneezing?

(g) What is the probability that you observe at least 3 people not covering their
mouths when sneezing if you are observing 15 random individuals?

]

(a) Let the random variable X be the number of people who do not cover their mouth when sneezing among 10 randomly selected people. The probability mass function of X is given by the binomial distribution $X ~ B(10, 0.2)$:

$ P(X = k) = mat(10; k) (0.2)^k (0.8)^(10-k) $

(b) The probability that among 10 randomly selected people exactly 4 do not cover their mouth when sneezing is:
$ P(X = 4) = mat(10; 4) (0.2)^4 (0.8)^6 approx 0.0881 $

(c) The probability that among 10 randomly selected people fewer than 3 do not cover their mouths is:
$ P(X < 3) = sum_(k=0)^2 P(X = k) approx 0.6778 $

(d) The expected value of the random variable X is:
$ E(X) = n * p = 10 * 0.2 = 2 $

(e) The variance of the random variable X is:
$ "Var"(X) = n * p * (1 - p) = 10 * 0.2 * 0.8 = 1.6 $

(f) For 15 randomly selected people, the probability that at most 2 do not cover their mouths when sneezing is:
$ P(X <= 2) = sum_(k=0)^2 P(X = k) approx 0.3980 $

(g) The probability that at least 3 people do not cover their mouths when sneezing among 15 randomly selected individuals is:
$ P(X >= 3) = 1 - P(X < 3) = 1 - P(X <= 2) approx 0.6020 $

#problem[
  A false-positive in a polygraph test, that is, an individual who fails a lying-detector
test even though they are telling the truth, has a probability of 15 %. Consider the
experiment of administering a lie-detector or polygraph test (these are synonyms or
words that have the same meaning in common usage) to a group of randomly selected
people and recording false-positives.

  (a) What is the probability that the first false-positive will occur when the third
  person is tested?

  (b) What is the probability that fewer than 4 people are tested before the first
  false-positive occurs?

  (c) What is the probability that more than 3 people are tested before the first
  false-positive occurs?

  (d) What is the expected value of false-positives?

  (e) What is the variance in this experiment?

]

(a) Let the random variable X be the number of people tested before the first false-positive occurs. The probability that the first false-positive will occur when the third person is tested is given by the geometric distribution:
$ P(X = 3) = (1 - p)^(k - 1) * p = (0.85)^2 * 0.15 approx 0.1084 $

(b) The probability that fewer than 4 people are tested before the first false-positive occurs is:
$ P(X < 4) = sum_(k=1)^3 P(X = k) approx 0.3859 $

(c) The probability that more than 3 people are tested before the first false-positive occurs is:
$ P(X > 3) = 1 - P(X < 4) approx 0.6141 $

(d) The expected value of false-positives is:
$ E(X) = 1/p = 1/0.15 approx 6.6667 $

(e) The variance in this experiment is:
$ "Var"(X) = (1 - p) / p^2 = (0.85) / (0.15)^2 approx 37.7778 $


#problem[
  Consider a roulette wheel, where we are referring to the gambling wheel featured in
casinos or gambling parlors around the world. It is a wheel that has two green slots
(the 0, and 00 slots on an American table; recall, American wheels are different than
European wheels), 18 red slots, and 18 black slots.

(a) What is the probability it will take $x = 1$ trial or spin of the wheel before
observing $r = 1$ green slot?

(b) What is the probability it will take $x = 30$ trials or spins before observing $r = 3$
green slots?

(c) What is the expected number of trials or spins before observing 3 green slots?

(d) What is the expected value in this experiment?

(e) What is the variance in this experiment?

]

(a) The probability it will take $x = 1$ trial or spin of the wheel before observing $r = 1$ green slot is given by the negative binomial distribution $X ~ "NB"(r, p)$:

$ P(X = x) = mat(x - 1; r - 1) (p)^r (1 - p)^(x - r) $

$ P(X = 1) = mat(1 - 1; 1 - 1) = mat(0; 0) (p)^1 (1 - p)^0 = (2/38) approx 0.0526 $

(b) The probability it will take $x = 30$ trials or spins before observing $r = 3$ green slots is:
$ P(X = 30) = mat(29; 2) (p)^3 (1 - p)^(27) approx 0.0137 $

(c) The expected number of trials or spins before observing 3 green slots is:
$ E(X) = r / p = 3 / (2/38) = 57 $

(d) The expected value in this experiment is:
$ E(X) = r / p = 3 / (2/38) = 57 $

(e) The variance in this experiment is:
$ "Var"(X) = r * (1 - p) / p^2 = 3 * (36/38) / (2/38)^2 = 1026 $


#problem[
  Suppose 40 % of students who drive to campus carry jump cables in their cars in case of
a dead battery emergency. Suppose further your car battery dies and that you do not
have jumper cables in your car. Consider the experiment of stopping other students
and asking to borrow jumper cables so that you are able to "jump" or re-energize your
car battery. Accordingly, let $X$ ="number of students who must be stopped before find
a student with jumper cables."

  (a) Give the probability function for this random variable, i.e. $P_X (X = x)$
  
  (b) Compute the probability $P_X (X = 1)$.
  
  (c) Compute the probability $P_X (X ≤ 3)$.
  
  (d) Compute the probability $P_X (X > 5)$.
  
  (e) What is the expected value in this experiment?
  
  (f) What is the variance in this experiment?
  
]
  (a) The probability function for this random variable is given by the geometric distribution:
$ P(X = x) = (1 - p)^(x - 1) * p $, where $p = 0.4$ is the probability that a randomly selected student has jumper cables.

  (b) The probability $P_X (X = 1)$ is:
$ P(X = 1) = (1 - 0.4)^(1 - 1) * 0.4 = 0.4 $

  (c) The probability $P_X (X ≤ 3)$ is:
$ P(X ≤ 3) = sum_(x=1)^3 P(X = x) = 1 - (1 - 0.4)^3 = 0.784 $

  (d) The probability $P_X (X > 5)$ is:
$ P(X > 5) = (1 - 0.4)^5 = 0.07776 $

  (e) The expected value in this experiment is:
$ E(X) = 1/p = 1/0.4 = 2.5 $

  (f) The variance in this experiment is:
$ "Var"(X) = (1 - p) / p^2 = (0.6) / (0.4)^2 = 3.75 $


#problem[
  A gold digging company determines there is a 20 % chance of successfully mining gold
in a given mining site.

i) What is the probability that the first successful extraction of gold comes from the
third mining site?

ii) What is the probability that the third successful extraction of gold comes from the
seventh mining site?

iii) What is the mean number of mining sites that must be mined to successfully
extract gold 3 times?

iv) What is the variance of the same number of mining sites?
]

i) The probability that the first successful extraction of gold comes from the third mining site is given by the geometric distribution:
$ P(X = 3) = (1 - p)^(k - 1) * p = (0.8)^2 * 0.2 = 0.128 $

ii) The probability that the third successful extraction of gold comes from the seventh mining site is given by the negative binomial distribution:
$ P(X = 7) = mat(x - 1; r - 1) (p)^r (1 - p)^(x - r) = mat(6; 2) (0.2)^3 (0.8)^(4) approx 0.0492 $

iii) The mean number of mining sites that must be mined to successfully extract gold 3 times is:
$ E(X) = r / p = 3 / 0.2 = 15 $

iv) The variance of the same number of mining sites is:
$ "Var"(X) = r * (1 - p) / p^2 = 3 * (0.8) / (0.2)^2 = 60 $


#problem[
  Suppose a lot of 25 machine parts is delivered and that a part is considered acceptable
only if it passes a tolerance test. Suppose further we sample 10 parts and find that
none are defective. What is the probability of this event if there are 6 defective parts,
that is, parts that do not pass a tolerance test, in a lot of 25?
]

The probability of finding no defective parts in a sample of 10 from a lot of 25 with 6 defective parts can be calculated using the hypergeometric distribution:
$ P(X = k) = (mat(K; k) dot mat(N - K; n - k)) / mat(N; n) $
where: $K = 6$ (number of defective parts), $N = 25$ (total number of parts), and $n = 10$ (sample size).

The probability of finding no defective parts ($k = 0$) is:
$ P(X = 0) = (mat(6; 0) dot mat(19; 10)) / mat(25; 10) approx 0.0283 $


#problem[
  i) Suppose an urn contains 23 balls, 13 of which are red, 12 of which are blue.
Suppose we drawn a sample of 6 balls and find there are 3 red balls in our sample.
What is the probability of this event, that is, that there are 3 red balls in the sample
of 6 balls we have withdrawn from the urn?

ii) What is the expectation of this experiment?

iii) What is the variance in this experiment?
]

i) The probability of drawing 3 red balls in a sample of 6 from an urn containing 13 red and 12 blue balls can be calculated using the hypergeometric distribution:
$ P(X = k) = (mat(K; k) dot mat(N - K; n - k)) / mat(N; n) $
where: $K = 13$ (number of red balls), $N = 25$ (total number of balls), and $n = 6$ (sample size).

The probability of drawing 3 red balls ($k = 3$) is:
$ P(X = 3) = (mat(13; 3) dot mat(12; 3)) / mat(25; 6) approx 0.3400 $

ii) The expectation of this experiment is:
$ E(X) = n * (K / N) = 6 * (13 / 25) approx 3.3913 $

iii) The variance in this experiment is:
$ "Var"(X) = n * (K / N) * ((N - K) / N) * ((N - n) / (N - 1)) = 6 * (13 / 25) * (12 / 25) * (19 / 24) approx 1.1394 $

#problem[
  According to "research" 90 % of adult cigarette smokers started smoking before
the age of 21 years old. Ten smokers 21 years old or older are randomly selected
and the number of smokers who started smoking before 21 is recorded.

a.) What random variable models the number of smokers who began smoking before
the age of 21 in the random sample of 21 adult smokers?

b.) Write down the probability mass function for your answer in a.)

c.) What is the probability fewer than 9 smokers started smoking before the age of
21?

d.) What is the expected value of smokers who began smoking before the age of 21 in
this experiment?

e.) What is the variance in this experiment?
]

a) The random variable that models the number of smokers who began smoking before the age of 21 in the random sample of 10 adult smokers is a binomial random variable $X ~ B(n, p)$, where $n = 10$ (number of trials) and $p = 0.9$ (probability of success).

b) The probability mass function for the binomial random variable is given by:
$ P(X = k) = mat(n; k) (p)^k (1 - p)^(n - k) $
where $k$ is the number of smokers who started smoking before the age of 21.

c) The probability that fewer than 9 smokers started smoking before the age of 21 is:
$ P(X < 9) = sum_(k=0)^8 P(X = k) approx 0.2639 $

d) The expected value of smokers who began smoking before the age of 21 in this experiment is:
$ E(X) = n * p = 10 * 0.9 = 9 $

e) The variance in this experiment is:
$ "Var"(X) = n * p * (1 - p) = 10 * 0.9 * 0.1 = 0.9 $

#problem[
  The potholes on a major highway in the city of Chicago occur at the rate of 3.4
per mile.

a.) What random variable models the number of potholes over a randomly selected 3
mile stretch of highway?

b.) Write down the probability mass function for your answer in a.)

c.) What is the probability of fewer than 3 potholes over a 3 mile stretch of randomly
selected highway?

d.) What is the expected value of potholes over a 3 mile stretch of randomly selected
highway?

e.) What is the variance in this experiment?
]

a) The random variable that models the number of potholes over a randomly selected 3 mile stretch of highway is a Poisson random variable $X ~ "Poisson"(lambda)$, where $lambda = 3.4 * 3 = 10.2$ (average rate of occurrence).

b) The probability mass function for the Poisson random variable is given by:
$ P(X = k) = (e^(-lambda) * lambda^k) / (k!) $
where $k$ is the number of potholes.

c) The probability of fewer than 3 potholes over a 3 mile stretch of randomly selected highway is:
$ P(X < 3) = sum_(k=0)^2 P(X = k) approx 0.0023 $

d) The expected value of potholes over a 3 mile stretch of randomly selected highway is:
$ E(X) = lambda = 10.2 $

e) The variance in this experiment is:
$ "Var"(X) = lambda = 10.2 $


#problem[
  A shipment of 100 machine parts is received at the port in New York City. It is
known in advance that 30 of the machine parts are defective. A sample of 50 parts
is withdrawn from the shipment.

a.) What random variable computes the probability that x of the parts in the sample
of 50 parts are defective?

b.) Write down the probability mass function for your answer in a.)

c.) What is the probability that 15 of the parts in the sample are defective?

d.) What is the expected value of defective parts in this sample?

e.) What is the variance in this experiment?

]

a) The random variable that computes the probability that x of the parts in the sample of 50 parts are defective is a hypergeometric random variable $X ~ "Hypergeometric"(N, K, n)$, where $N = 100$ (total number of parts), $K = 30$ (number of defective parts), and $n = 50$ (sample size).

b) The probability mass function for the hypergeometric random variable is given by:
$ P(X = k) = (mat(K; k) dot mat(N - K; n - k)) / mat(N; n) $
where $k$ is the number of defective parts in the sample.

c) The probability that 15 of the parts in the sample are defective is:
$ P(X = 15) = (mat(30; 15) dot mat(70; 35)) / mat(100; 50) approx 0.1725 $

d) The expected value of defective parts in this sample is:
$ E(X) = n * (K / N) = 50 * (30 / 100) = 15 $

e) The variance in this experiment is:
$ "Var"(X) = n * (K / N) * ((N - K) / N) * ((N - n) / (N - 1)) = 50 * (30 / 100) * (70 / 100) * (50 / 99) approx 5.3030 $


#problem[
  Automobiles are testing for emissions. It is determined that 30 % of automobiles
whose emissions levels are inspected fail the inspection. We shall conduct the
experiment of inspecting car emissions upon individual cars.

a.) What random variable computes the probability that x cars are inspected for
their emission levels until one car fails?

b.) Write down the probability mass function for your answer in a.)

c.) What is the probability that 5 cars are inspected until a car fails its emissions
test?

]

a) The random variable that computes the probability that x cars are inspected for their emission levels until one car fails is a geometric random variable $X ~ "Geometric"(p)$, where $p = 0.3$ (probability of failure).

b) The probability mass function for the geometric random variable is given by:
$ P(X = x) = (1 - p)^(x - 1) * p $
where $x$ is the number of cars inspected until the first failure.

c) The probability that 5 cars are inspected until a car fails its emissions test is:
$ P(X = 5) = (1 - 0.3)^(5 - 1) * 0.3 = (0.7)^4 * 0.3 approx 0.0720 $


#problem[
  A book publisher determines that the probability of at least one misprint on any given
page is .005 in a book containing 600 pages.

a.) What random variable computes the probability there are x misprints in the 600
page book?

b.) Approximate the probability that at least three pages have a misprint.

]

a) The random variable that computes the probability there are x misprints in the 600 page book is a Poisson random variable $X ~ "Poisson"(lambda)$, where $lambda = 600 * 0.005 = 3$ (average rate of occurrence).

b) The probability that at least three pages have a misprint is:
$ P(X >= 3) = 1 - P(X < 3) = 1 - (P(X = 0) + P(X = 1) + P(X = 2)) $
where $ P(X = k) = (e^(-lambda) * lambda^k) / (k!) $ for $k = 0, 1, 2$.

Calculating this, we get:
$ P(X >= 3) approx 0.5768 $


#problem[
  An individual plays high school basketball. He success at shooting free throws is 70 %.

a.) What is the probability that an individual will have to shoot 7 free throws to
score 3 baskets?

b.) What is the expected value of successful free throws in 7 shots?

c.) What is the variance in b.)?

]

(a) The probability that an individual will have to shoot 7 free throws to score 3 baskets is given by the negative binomial distribution:
$ P(X = 7) = mat(6; 2) (0.7)^3 (0.3)^(4) approx 0.0417 $

(b) The expected value of successful free throws in 7 shots is:
$ E(X) = n * p = 7 * 0.7 = 4.9 $

(c) The variance in b.) is:
$ "Var"(X) = n * p * (1 - p) = 7 * 0.7 * 0.3 = 1.47 $


#linebreak()

#line()

Created with Typst. See source code in https://github.com/gaojunran/discrete-homework.
