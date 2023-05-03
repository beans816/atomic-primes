;;so far this only works up to 100, do not change the name of the list
(defparameter *lpn* '(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97))

(defun mod0p (number divisor)
  "Predicate that returns true if a number is divisible by modulus (0)"
  (zerop (mod number divisor)))

(defun memberp (n list)
  "Predicate that returns T if a number or symbol is a member of a list"
  (and (member n list) t))

(defun is-lpn-p (n)
  "Predicate that returns T if a number is in the prime numbers list"
  (memberp n *lpn*))

(defun digit-to-list (n)
  "Turns a number into a list of numbers so large numbers can be easily manipulated"
  (let ((as-string (format nil "~D" n)))
    (mapcar #'parse-integer (mapcar #'string (coerce as-string 'list)))))

(defun primep (n)
  "Predicate returns T if number is a prime."
  (and (integerp n)
       (> n 1)
       (or (memberp n *lpn*)
	   (notany (lambda (x) (mod0p n x)) *lpn*))))

(defun Sieve-of-Eratosthenes (number-list)
  "Sieve of Eratosthenes Algorithm removes all numbers in a list that are not prime"
    (remove-if-not #'primep number-list))

(defun prime-factorisation (n)
  "https://youtu.be/-RhdzNYfF-M"
  (let ((primefactors ()))
    (labels ((pushnumber (n)
	       (push n primefactors))
	     (single-factor (n)
	       (cond ((primep n) (pushnumber n))
		     ;;for-every i where mod n i returns true in the list *lpn*
		     ((every (lambda (i)
			       (mod0p n i))
			     *lpn*)
		      ;;almost
		      (pushnumber i) (single-factor (/ n i))))))
      (single-factor n)
      primefactors)))

(defun goldbach-conjecture (n lpn)
  "Predicate proof based off of Goldbach's conjecture - will return a list of the SUM of the first two prime numbers. The lowest prime number starts at 2 and increments to the next prime number until it returns that either the difference between the lpn and the even number is also a prime (TRUE) or it will return NIL if Goldbach was wrong. In this way you can define a even number differently as the sum of the two lowest prime numbers."
  (if (and (evenp n)
	   (primep (- n lpn))
	   (< 1 ( - n lpn)))
      ;;return a list when true
      (list '+ lpn (- n lpn))
      ;;else NIL = FALSE = Goldbach was wrong about even numbers
      ))

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
