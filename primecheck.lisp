(defun primep(n)
  (and (integerp n)
       (> n 1)
       (if (or(= n 2)
	      (= n 3)
	      (= n 5)
	      (= n 7))
	   t
	   (and
	       (not(zerop(mod n 2)))
	       (not(zerop(mod n 3)))
	       (not(zerop(mod n 5)))
	       (not(zerop(mod n 7)))))))
