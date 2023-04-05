
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
(defun Sieve-of-Eratosthenes (limit)
  "Sieve of Eratosthenes Algorithm returns a list of prime numbers up to a specified limit"
  (let ((prime-list ()))
    (dolist (number (make-number-list limit) (reverse prime-list))
      (when (primep number)
	(push number prime-list))))))
;;for the future: (remove-if-not 'primep (make-number-list limit))

;;define a function that makes a list from 0 up to a limit
(defun make-number-list (limit)
"Returns a number list starting from 0 to limit"
  (let ((number-list))
    (dotimes (i (1+ limit) (reverse number-list))
      (push i number-list))))
