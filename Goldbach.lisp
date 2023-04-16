;;how do you prove that every even number is a sum of 2 prime numbers when there are infinate primes?

(defun goldbach-conjecture-p (n lpn)
  "Predicate proof based off of Goldbach's conjecture - will return a list of the SUM of the first two prime numbers. The lowest prime number starts at 2 and increments to the next prime number until it returns that either the difference between the lpn and the even number is also a prime (TRUE) or it will return NIL if Goldbach was wrong. In this way you can define a even number differently as the sum of the two lowest prime numbers."
  (if (and (evenp n)
	   (primep (- n lpn))
	   (< 1 ( - n lpn)))
      ;;return a list when true
      (list '+ lpn (- n lpn))
      ;;else NIL = FALSE = Goldbach was wrong about even numbers
      ))

;;To prove him wrong, find the n where 0 lists are returned (False). This will never happen, it is impossible. The returned lists occur in a pattern of 1;1;1;2;1:2;2:2;2;3;3;3;2. Since this sequence increments and never touches 0 (by incrementing from 1), like how a hyperbola never touches 0 if it starts at 1. Maybe when its graphed it can even be a circle, I want to know what this sequence looks like when its on a graph.

;;print the sequence up to where n is 4
;;the test here is if it is part of a set
(defun wrong-sequence (n limit)
  "This sequence recursivly proves that Goldbach was right with the sequence:
1;1;1;2;1;2;2;2;2;3;3;3;2"
  ;;atm this is not correct check what is it supposed to print and what is does not print it is wrong and misses a 2 ->1;1;1;2;1;2;2;2;3;3;3;2
  ;;the dotimes section works like a set so its not correct, at least not the correct set
  (unless ( > n limit)
    (dotimes (i 3)
      (print n))
    (print (1+ n))
    (print n)
    (wrong-sequence (1+ n) limit)))

;; then make n = n + 1 in the main body until it is equal to the limit
;; a a a b a b b b b c c c b
;; 3a (1+a) a 4(1+ a) -> reccuring

;;or
;; a a a a+1 a a+1 a+1 a+1 a+1 a+2 a+2 a+2 a+1

(dotimes (a 3)
  (print a))
(print (1+ a))
(print a)
(dotimes (a 4)
  (print 1+ a))
;;call sequence again until hits the limit

;;this is just guessing the sequence when it is possible that the sequence is not what I think

;;really just make a sequence yourself using goldbachs-conjecture or its probably easier to do it on a piece of paper and test the next 5 numbers by making rhombus patterns
(defun gold-seq (a limit)
  (unless ( > a limit)
    (dotimes (i 3)
      (print a))
    (print (1+ a))
    (print a)
    (dotimes (i 4)
      (print (1+ a)))
    (dotimes (i 3)
      (print (+ a 2)))
    (gold-seq (1+ a) limit)))
;;who knows it has to be checked
;;need more numbers until they repeat a pattern
;;im just going to make something that detects a sequence

;;3 inputs, evenn, evenlimit and a list of prime numbers
;;lets just use a predefined list of prime numbers first

;;increment lpn by the next prime number in a list

;;prove that there is an equation to goldbachs comet

(defun goldbach-comet (n lpn)
  "Number of ways to write an even number n as the sum of two primes."
  (if (and (evenp n)
	   (primep (- n lpn))
	   (< 1 ( - n lpn)))
      ;;return all lists that are true and store in a list using lambda
      (list '+ lpn (- n lpn))
      ;; count the elements in the list
      ;;else NIL = FALSE = Goldbach was wrong about even numbers
      ))

