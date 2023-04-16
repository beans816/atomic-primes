# Goldbach's conjecture
![image](https://user-images.githubusercontent.com/22084147/232314214-fc596531-97a6-4957-96b1-304650738dba.png)


-> Sequences.lisp aims to eventually solve Goldbachs Conjecture by proving that Goldbachs comet occurs in a sequence or algorithm that can be computed. If something can be computed with a algorithm, it's a proof. Just by looking at the picture below, it's quite clear that there is a pattern/sequence and that Goldbachs Conjecture is not just a conjecture. Since there is an infinate number of primes you cannot test every prime in existance.

![image](https://user-images.githubusercontent.com/22084147/232312777-21793763-1e14-4df0-99d2-76fefc66a906.png)


Goldbach's comet also shows an obvious pattern that looks like the upper right side of a hyperbola. This means that the sums of primes can be predicted! It would also give a valid reason of why the greek mathematicians were so obsessed with hyperbolas and primes.

![image](https://user-images.githubusercontent.com/22084147/232313289-abfe39ab-b15c-4348-a085-53bbc38971cb.png)

Solving this problem is still a work in progress, I have not even completed a single book on lisp yet. But I am working on this when I get bored of the book. To see my progress through the book please see https://github.com/beans816/learning-lisp

Thank you :) !

# Sieve of Eratosthenes

Common Lisp predicate of a prime number using the ancient algorithm of the Sieve of Eratosthenes. 
If you cannot define a prime through a sequence, you define a prime number by the number of its prime factors.

![Sieve_of_Eratosthenes_animation](https://user-images.githubusercontent.com/22084147/228866250-38f952ff-5ef1-4347-b205-f0b673badd70.gif)
 
-> Primes don't occur in a sequence that I know of. They are found using Eratosthenes algorithm since this works perfectly every time and uses logic.

In the file 'PrimesofCyrene.lisp' you will see these functions:

```(primep n)```
`(Sieve-of-Eratosthenes list)`

Think of the functions quite literally as a Sieve and then you will understand how to find prime numbers! Or think of it like gold panning.

# Sequences

I need to fully understand sequences to continue understanding goldbachs conjecture. So I am making a library of functions that return the sequence rule when given a list of numbers. When I figure it out in it completed-ness maybe I can just try it on prime numbers and see if there is a sequence.
