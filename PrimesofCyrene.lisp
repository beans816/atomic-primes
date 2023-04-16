#||
https://en.wikipedia.org/wiki/Eratosthenes
I like his sieve the most, he knew a lot more then just prime numbers and I am sure he used his knowledge across all his differenct diciplines. 
Including music theory.
He was also the closest to calculating the size of the earth just by measuring shadows. He knew the earth was tilted.
The below code can be obscured to go as fast as possible, if thats what you want then use c++ or a circuit board
||#
(defun primep(n)
  "Predicate returns T is number is a prime."
  (and (integerp n)
       (> n 1)
       (if (or (= n 2)
	      (= n 3)
	      (= n 5)
	      (= n 7))
	   t
	   (and
	       (not(zerop(mod n 2)))
	       (not(zerop(mod n 3)))
	       (not(zerop(mod n 5)))
	       (not(zerop(mod n 7)))))))


;;Sieve of Eratosthenes
(defun Sieve-of-Eratosthenes (number-list)
  "Sieve of Eratosthenes Algorithm returns a list of prime numbers up to a specified limit"
  (let ((prime-list ()))
    (dolist (number (new-num-list number-list) (reverse prime-list))
      (when (primep number)
	(push number prime-list))))))
;;for the future: (remove-if-not 'primep (make-number-list limit))

;;define a function that makes a list from 0 up to a limit
(defun new-num-list (limit)
"Returns a number list default starting from 0 to limit"
  (let ((number-list))
    (dotimes (i (1+ limit) (reverse number-list))
      (push i number-list))))
;;for the future: optionally takes a interger to form a starting point like in new-num-list-specify

(defun new-num-list-specify (start limit)
"Returns a number list starting from n to limit."
  (let ((number-list))
    (dotimes (i (- (1+ limit) start) (reverse number-list))
      (push (+ start i) number-list))))
;;the main function needs to take 2 arguments for this to work but the function by itself works, and the function name and args changed in the body
