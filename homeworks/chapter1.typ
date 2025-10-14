#import "../khw.typ": *

#show: khw.with(
  title: [Chapter 1 Homework Exercises],
  course: "Discrete Probability Theory",
  author: "GAO Junran 2023215319",
)

#show math.frac: it => $display(it)$
#set text(top-edge: 0.7em) 

// Problem 1 {{{1
#problem[
  Allen, Baker, Cabot, and Dean are to speak at a dinner. They will draw lots to determine the order in which they will speak. Please answer the following questions:

  1. List all the elements of a sample space Ω associated to the experiment of recording the order in which these four individuals speak at the dinner.

  2. Mark with a check the simple events in part a.) contained in the event A = {Allen speaks before Cabot} ⊂ Ω

  3. Mark with a cross the elements of the event,
    
    A = {Cabot's speech is between those of Allen and Baker}

  4. Mark with a star the elements of the event

    A = {The four persons speak in alphabetical order}
]

Possible orderings: $4! = 24$. All the elements of the sample space Ω are:

1. Allen, Baker, Cabot, Dean ✅ ⭐️

2. Allen, Baker, Dean, Cabot ✅
3. Allen, Cabot, Baker, Dean ✅ ❎
4. Allen, Cabot, Dean, Baker ✅ ❎
5. Allen, Dean, Baker, Cabot ✅
6. Allen, Dean, Cabot, Baker ✅ ❎
7. Baker, Allen, Cabot, Dean ✅
8. Baker, Allen, Dean, Cabot ✅
9. Baker, Cabot, Allen, Dean ❎
10. Baker, Cabot, Dean, Allen ❎
11. Baker, Dean, Allen, Cabot ✅
12. Baker, Dean, Cabot, Allen ❎
13. Cabot, Allen, Baker, Dean
14. Cabot, Allen, Dean, Baker
15. Cabot, Baker, Allen, Dean
16. Cabot, Baker, Dean, Allen
17. Cabot, Dean, Allen, Baker
18. Cabot, Dean, Baker, Allen
19. Dean, Allen, Baker, Cabot ✅
20. Dean, Allen, Cabot, Baker ✅ ❎
21. Dean, Baker, Allen, Cabot ✅
22. Dean, Baker, Cabot, Allen ❎
23. Dean, Cabot, Allen, Baker
24. Dean, Cabot, Baker, Allen

(b) The elements of the event A = {Allen speaks before Cabot} are marked with a check mark (✅) above. Totally $24 div 2 = 12$ elements belong to this event.

(c) The elements of the event A = {Cabot's speech is between those of Allen and Baker} are marked with a cross mark (❎) above. Totally $24 times 2 / 6 = 8$ elements belong to this event.

(d) The elements of the event A = {The four persons speak in alphabetical order} are marked with a star mark (⭐️) above. Totally $4! div 4! = 1$ element belongs to this event.

// }}}

#problem[
  Consider the experiment "A fair coin is tossed five times."
1. Determine the sample space Ω associated to this experiment. Furthermore, count the number of simple events in the same. In set theoretic notation, this means to compute |Ω| i.e. the cardinality of the sample space as a set.

  Please use the fact that the discrete probability space (Ω, β, P) determined by the experiment in a.) is an equiprobable sample space to compute the following probabilities of the events named in the following questions:
2. Heads never occurs twice in a row.
3. Neither heads nor tails ever occurs twice in a row.
4. Both heads and tails occur at least twice in a row.
]

(a) The sample space Ω associated to this experiment is: Ω = {HHHHH, HHHHT, HHHTH, HHHTT, HHTHH, HHTHT, HHTTH, HHTTT, HTHHH, HTHHT, HTHTH, HTHTT, HTTHH, HTTHT, HTTTH, HTTTT, THHHH, THHHT, THHTH, THHTT, THTHH, THTHT, THTTH, THTTT, TTHHH, TTHHT, TTHTH, TTHTT, TTTHH, TTTHT, TTTTH, TTTTT}. The number of simple events in the same is $|Ω| = 2^5 = 32$.

Determine the discrete probability space (Ω, β, P) = $(Ω, 2^Ω, P)$, where $P(E) = |E| div |Ω|$ for all events $E subset.eq Ω$.

(b) The event "Heads never occurs twice in a row" contains the following simple events: {HTHTH, HTHTT, HTTHT, HTTTH, HTTTT, THTHT, THTTH, THTTT, TTHTH, TTHTT, TTTHT, TTTTH, TTTTT}. Thus the probability of this event is $P(E) = |E| div |Ω| = 13 / 32$.

(c) The event "Neither heads nor tails ever occurs twice in a row" contains the following simple events: {HTHTH, THTHT}. Thus the probability of this event is $P(E) = |E| div |Ω| = 2 / 32 = 1 / 16$.

(d) The event "Both heads and tails occur at least twice in a row" contains the following simple events: {HHHTT, HHTTH, HHTTT, HTTHH, THHTT, TTHHH, TTHHT, TTTHH}. Thus the probability of this event is $P(E) = |E| div |Ω| = 8 / 32 = 1 / 4$.

// }}}

#problem[
  Consider the experiment whose of simple events are the record of "two dice are thrown" - this sample space Ω therefore consists of pairs $(i, j)$ such that $1 ≤ i, j ≤ 6$, Let

    - A = {The total is two}
    - B = {The total is seven}
    - C = {The number shown on the first die is odd}
    - D = {The number shown on the second die is odd}
    - E = {The total is odd}

  be events in this experiment. Given that (Ω, β, P) is an equiprobable sample space,
compute the following probabilities:

    - a) $P(A)$
    - b) $P(B)$
    - c) $P(C)$
    - d) $P(D)$
    - e) $P(E)$
    - f) $P(A ∪ B)$
    - g) $P(A ∩ B)$
    - h) $P(A ∪ C)$
    - i) $P(C ∩ D ∩ E)$
    - j) $P(B ∪ D^c)$
]

The sample space Ω associated to this experiment is: Ω = {(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6)}. The number of simple events in the same is $|Ω| = 6 times 6 = 36$.

(a) The event A = {The total is two} contains the following simple events: {(1, 1)}. Thus the probability of this event is $ P(A) = |A| div |Ω| = 1 / 36 $.

(b) The event B = {The total is seven} contains the following simple events: {(1, 6), (2, 5), (3, 4), (4, 3), (5, 2), (6, 1)}. Thus the probability of this event is $ P(B) = |B| div |Ω| = 6 / 36 = 1 / 6 $.

(c) The event C = {The number shown on the first die is odd} contains the following simple events: {(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6)}. Thus the probability of this event is $ P(C) = |C| div |Ω| = 18 / 36 = 1 / 2 $.

(d) The event D = {The number shown on the second die is odd} contains the following simple events: {(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (1, 3), (2, 3), (3, 3), (4, 3), (5, 3), (6, 3), (1, 5), (2, 5), (3, 5), (4, 5), (5, 5), (6, 5)}. Thus the probability of this event is $ P(D) = |D| div |Ω| = 18 / 36 = 1 / 2 $.

(e) The event E = {The total is odd} contains the following simple events: {(1, 2), (1, 4), (1, 6), (2, 1), (2, 3), (2, 5), (3, 2), (3, 4), (3, 6), (4, 1), (4, 3), (4, 5), (5, 2), (5, 4), (5, 6), (6, 1), (6, 3), (6, 5)}. Thus the probability of this event is $ P(E) = |E| div |Ω| = 18 / 36 = 1 / 2 $.

(f) The event $A ∪ B$ contains the following simple events: {(1, 1), (1, 6), (2, 5), (3, 4), (4, 3), (5, 2), (6, 1)}. Thus the probability of this event is $ P(A ∪ B) = |A ∪ B| div |Ω| = 7 / 36 $.

(g) The event $A ∩ B$ contains no simple events. Thus the probability of this event is $ P(A ∩ B) = |A ∩ B| div |Ω| = 0 / 36 = 0 $.

(h) The event $A ∪ C$ contains the following simple events: {(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6)}. Thus the probability of this event is $ P(A ∪ C) = |A ∪ C| div |Ω| = 18 / 36 = 1 / 2 $.

(i) The event $C ∩ D ∩ E$ contains no simple events, as it's impossible for an odd adding an odd to result in an odd. Thus the probability of this event is $ P(C ∩ D ∩ E) = |C ∩ D ∩ E| div |Ω| = 0 / 36 = 0 $.

(j) The event $B ∪ D^c$ contains the following simple events: {(1, 2), (1, 4), (1, 6), (2, 2), (2, 4), (2, 5), (2, 6), (3, 2), (3, 4), (3, 6), (4, 2), (4, 3), (4, 4), (4, 6), (5, 2), (5, 4), (5, 6), (6, 1), (6, 2), (6, 4), (6, 6)}. Thus the probability of this event is $ P(B ∪ D^c) = |B ∪ D^c| div |Ω| = 21 / 36 = 7 / 12 $.

#problem[
  Prove, by the aid of Venn diagrams, that for any probability space (Ω, β, P) and events
A, B, C ∈ β that
$ P(A ∩ B) + P((A ∖ B) ∪ (B ∖ A)) + P(A^c ∩ B^c) = 1 $
Recall the following definition in set theory.

Definition 27. Let A and B be sets, then we say
$ A ∖ B = {x ∈ A|x ∈ A, x ∉ B} $
is the difference of B in A.

Remark: "by aid of Venn diagrams" means drawing a set of Venn diagrams that
exhibits the underlying set theoretic relation in conjunction with a remark to that
effect that, "because P is a probability distribution function it does this by the axioms
of a probability space" is sufficient. TLDR: you can just use pictures.
]

Proof using Venn diagrams (Painted with Powerpoint, yellow means the counted area):

#context [
  #set image(width: 50%)
  
  $A inter B$:

  #image("image.png")

  $(A \\ B) union (B \\ A)$:

  #image("image-2.png")

  $A^c$:

  #image("image-3.png")

  $B^c$:

  #image("image-4.png")

  $A^c inter B^c$:

  #image("image-5.png")
]

Combining $A inter B$, $(A \\ B) union (B \\ A)$ and $A^c inter B^c$, we can see that they form a partition of the sample space Ω. Thus, by the axioms of a probability space, we have
$ P(A ∩ B) + P((A ∖ B) ∪ (B ∖ A)) + P(A^c ∩ B^c) = P(Ω) $.


#problem[
  Recall the defintion of the power set of an arbitrary set, A: We say the set of all subsets of A, denoted $2^A$, is the power set of A.

Let $A = {a, b, c}$ be a set of three elements. Consider the set function
$f : 2^A → Z$ defined by $f(B) = |B|$ that is, the image of a subset of A under f is the number of its elements.

Draw a diagram that illustrates this function that includes both its domain and its image. Use this diagram in conjunction with the definition to illustrate why f is not an injection i.e. is not 1-1.
]

This is an illustration painted with Powerpoint:

#image("image-6.png")

In this case, $A = {a, b, c}$, so its power set consists of eight subsets: \ $ emptyset, {a}, {b}, {c}, {a,b}, {a,c}, {b,c}, {a,b,c}$.

We then define a function $f: 2^A -> Z$ that maps each subset $B subset.eq A$ to its cardinality, The full mapping is as follows: the empty set maps to 0; the single-element sets ${a}, {b}, {c}$ map to 1; the two-element sets ${a,b}, {a,c}, {b,c}$ map to 2; and the full set ${a,b,c}$ maps to 3.

From the diagram above, it is clear that *different subsets can map to the same number*. For instance, ${a}$ and ${b}$ both map to 1, while ${a,b}$, ${a,c}$ and ${b,c}$ all map to 2. Because the function sends multiple distinct inputs to the same output, it is *not injective* (not one-to-one).

#problem[
  Recall, a rule assigning elements of a set A to a set B is said to be well-defined if the assignment of elements in A to those of B is unique. Furthermore, such a rule is said to be a function when it is well-defined. Consider the rule
  $ f : QQ → ZZ $
where $f(m / n) = m - n "for any" q = m / n in QQ$. Explain why this rule is not a function.
]

The rule in question is defined from the set of rational numbers, $QQ$, to the set of integers, $ZZ$, by the formula $f(m/n) = m - n$ for any rational number $q = m/n$. The crucial point is that a single rational number can be represented by infinitely many equivalent fractions. For example, $1/2$ can also be written as $2/4$, $3/6$, $4/8$, and so on.

For $1/2$, we get $f(1/2) = 1 - 2 = -1$. But for the equivalent fraction $2/4$, the rule gives $f(2/4) = 2 - 4 = -2$. This means that the same rational number $1/2$ is assigned *two different outputs*, -1 and -2. The rule does not produce a unique output for every input rational number.

Therefore, the rule $f(m/n) = m - n$ is *not well-defined*. The essential issue is that a function must assign exactly one output to each input, but this rule fails to do so for rational numbers with multiple fractional representations.

#problem[
  Suppose A, B, C partition the set Ω and that $(Ω, β, P)$ is a probability space. Suppose further $P(A) = 0.3$ and $P(B) = 0.5$. Compute both the probability $P(A ∪ B)$ and the probability $P(C)$.
]

1. Since A, B, C partition the set Ω, we have $A ∩ B = emptyset$, so $P(A ∪ B) = P(A) + P(B) = 0.3 + 0.5 = 0.8$.

2. Since A, B, C partition the set Ω, we have $P(A) + P(B) + P(C) = P(Ω) = 1$. Thus, $P(C) = 1 - P(A) - P(B) = 1 - 0.3 - 0.5 = 0.2$.


#problem[
  Suppose $A, B ∈ β$ are events in the probability space $(Ω, β, P)$ and $P(A) = 0.8$, $P(B) = 0.7$, and $P(A ∩ B) = 0.6$. What is the probability $P(A ∪ B)$?
]

The formula for the union of two events is given by:
$ P(A ∪ B) = P(A) + P(B) - P(A ∩ B) $

And we are given: $P(A) = 0.8$, $P(B) = 0.7$, $P(A ∩ B) = 0.6$.

So $P(A ∪ B) = P(A) + P(B) - P(A ∩ B) = 0.8 + 0.7 - 0.6 = 0.9$.


#problem[
  Prove that, for any probability space $(Ω, β, P)$ and events $A, B ∈ β$, if
  $ P(A) / P(A ∩ B) + P(B) / P(A ∩ B) = 1 / P(A) + 1 / P(B) $
then A and B are independent.

_rmk_: the "proof" here is just a manipulation of the given equality to obtain the definition of independence, just like the“proofs" in class. Remember, too, that you are allowed to assume the centered identity, so to demonstrate/prove that the conclusion“A and B are independent" from it, you merely have to derive the definition of independence given the centered identity.
]

Rewrite left-handed side, we get:

$ (P(A) + P(B)) / P(A ∩ B) = 1 / P(A) + 1 / P(B) $

Combine the fraction on right-handed side, we get:

$ (P(A) + P(B)) / P(A ∩ B) = (P(A) + P(B)) / (P(A) dot P(B)) $

1. If $P(A) + P(B) > 0$, we can cancel $P(A) + P(B)$ on both sides, then we have:

$ 1 / P(A ∩ B) = 1 / (P(A) dot P(B)) $

  Then $P(A) dot P(B) = P(A ∩ B)$, which is the definition of independence.

2. If $P(A) + P(B) = 0$, then $P(A) = P(B) = 0$. By the definition of independence, A and B are independent.

#problem[
  Consider the following experiment. A playing card is drawn from a deck of 52 cards and replaced, then a second card is drawn. The associated sample space Ω consists of pairs which record the suit and denomination of the two cards drawn. Let A be the event, "the first card is a spade." Let B be the event, "the second card is a spade." Let C be the event, "both cards have the same color." Please recall that playing cards are either red, the hearts and diamonds, or black, the spades and clubs.

Determine whether

a) A and B are independent.

b) B and C are independent.

c) A, B, and C are independent.

_rmk_: Note that to solve c) you will need to use the general definition of independence we gave in class, because there are three events whose independence of which you are trying to determine.
]

Calculate the probabilities of the events:

$ P(A) = 1/4, "A = {(spade, spade), (spade, heart), (spade, diamond), (spade, club)}" $

$ P(B) = 1/4, "B = {(spade, spade), (heart, spade), (diamond, spade), (club, spade)}" $

$ P(C) = 1/2 dot 1/2 + 1/2 dot 1/2 = 1/2 $

a) Since $P(A ∩ B) = 1/16 "{(spade, spade)}" = P(A) dot P(B)$, A and B are independent.

b) Since $P(B ∩ C) = 1/4 "{(spade, spade), (spade, spade), (club, spade), (spade, club)}" eq.not P(B) dot P(C) = 1/8$, B and C are not independent.

c) If A, B and C are independent, then:

  - A and B are independent. (Determined in part a))
  - A and C are independent. 
  - B and C are independent. (Determined in part b))
  - $P(A ∩ B ∩ C) = P(A) dot P(B) dot P(C)$

As B and C are NOT independent, we can conclude that A, B and C are NOT independent.

#problem[
  Consider the following experiment of rolling both one six sided red die and one six sided blue die and recording the individual outcomes. What is the probability of the event the sum of the numbers on both the red and the blue dice is 7 and the value on the blue die is larger than the value on the red die?
]

Determine the sample space Ω associated to this experiment. The sample space Ω associated to this experiment is: 

$Ω = {(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), \ (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), \ (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6)}$. 

The number of simple events in the same is $|Ω| = 6 times 6 = 36$.

List all the elements of the event "the sum of the numbers on both the red and the blue dice is 7: 

$ A = {(1, 6), (2, 5), (3, 4), (4, 3), (5, 2), (6, 1)} $

Filter the elements above with the condition "the value on the blue die is larger than the value on the red die", we get:

$ B = {(1, 6), (2, 5), (3, 4)} $

The event B contains 3 simple events. Thus the probability of this event is $ P(B) = |B| div |Ω| = 3 / 36 = 1 / 12 $


#problem[
  Suppose an urn contains 25 red balls and 15 blue balls. Consider the experiment of choosing 2 balls from the urn, without replacement. The associated sample space consists of the pairs recording the color of the balls selected. 
  
  What is the probability of the event, "both balls are red?"
]

Define the following events:

$A$ = {The first ball is red}, $B$ = {The second ball is red}, $C$ = {Both balls are red}.

We have $ P(A) = 25 / 40, space P(B | A) = 24 / 39 $.

Since the draws are without replacement, A and B are not independent. We have:

$ P(C) = P(A ∩ B) = P(A) dot P(B | A) = 25/40 dot 24/39 = 600 / 1560 = 5 / 13 $

#problem[
  A test that screens for illegal drug use, i.e. a "drug test," is used in a large population of people in which 4 % of who actually use drugs. Suppose that the false positive rate in the drug test is 3 % and that the false negative rate in the drug test is 2 %. Accordingly, an individual who actually uses drugs tests positive for drug use 98 % of the time, whereas an individual who does not use drugs tests negative for drug use 97 % of the time. What is the probability that an individual randomly chosen who tests positive for illegal drug use actually uses illegal drugs?
]

Symbolize the events:

$D$ = {The individual uses drugs}, $T$ = {The individual tests positive for drug use}.

We have:

$ P(D) = 0.04, space P(D^c) = 0.96 $
$ P(T | D) = 0.98, space P(T^c | D) = 0.02 $
$ P(T | D^c) = 0.03, space P(T^c | D^c) = 0.97 $

And we are asked the probability $P(D | T)$.

By Bayes' theorem, we have:

$ P(D | T) = P(T | D) dot P(D) / P(T) = (P(T | D) dot P(D)) / (P(T | D) dot P(D) + P(T | D^c) dot P(D^c)) $

Carry out the calculation, we get:

$ P(D | T) = (0.98 dot 0.04) / (0.98 dot 0.04 + 0.03 dot 0.96) = 0.0392 / (0.0392 + 0.0288) = 0.0392 / 0.068 = 49 / 85 approx 0.5765 $


#problem[
  A laboratory blood test is 95 % effective in detecting a certain disease when it is actually present. However, the test also yields a “false positive" result for 1 % of the healthy persons tested. If .5 % of the population actually has the disease, what is the probability a person has the disease given the test result is positive.
]

Symbolize the events:

$D$ = {The person has the disease}, $T$ = {The test result is positive}.

We have:

$ P(D) = 0.005, space P(D^c) = 0.995 $
$ P(T | D) = 0.95, space P(T^c | D) = 0.05 $
$ P(T | D^c) = 0.01, space P(T^c | D^c) = 0.99 $

And we are asked the probability $P(D | T)$.

By Bayes' theorem, we have:

$ P(D | T) = P(T | D) dot P(D) / P(T) = (P(T | D) dot P(D)) / (P(T | D) dot P(D) + P(T | D^c) dot P(D^c)) $

Carry out the calculation, we get:

$ P(D | T) = (0.95 dot 0.005) / (0.95 dot 0.005 + 0.01 dot 0.995) = 0.00475 / (0.00475 + 0.00995) = 0.00475 / 0.0147 = 19 / 59 approx 0.322 $


#linebreak()

#line()

Created with Typst. See source code in https://github.com/gaojunran/discrete-homework.
