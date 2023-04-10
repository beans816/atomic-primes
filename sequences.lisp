
;;write a program that finds the sequence of a list of given numbers. the input is the list and the output is the formula for the given sequence, i.e 2n + 1
;;how to determine if something is a arithmetic sequence


(defun common-difference-zero-p (list)
  ;;is there a common difference? There is always a common difference, even if it is 0
  ;;its more productive to determine if the common difference is 0
  "Predicate determines if given number sequence has a common difference of 0"
  (zerop (- (second list) (first list))

(defun rule-difference (list)
  "Accepts a list and returns the constant difference"
  (destructuring-bind (a b &rest remainder)
      list
    (declare (ignore remainder))
    (let ((constant-diff (- b a)))
      constant-diff)))

(defun arithmetic-seq-rule (list)
  "Return the rule for a given arithmetic sequence"
  (list 'Xn '+ (rule-difference list)))

;;geometric sequences
(defun common-ratio-p (list)
  "Predicate determines if given number sequence has a common multiple"
  (destructuring-bind (a b c &rest remainder)
      list
    (declare (ignore remainder))
    (equalp (/ b a) (/ c b))))

(defun rule-ratio (list)
  "Accepts a list and returns the constant multiple"
  (destructuring-bind (a b &rest remainder)
      list
    (declare (ignore remainder))
    (let ((constant-mult (/ b a)))
      constant-mult)))

(defun geometric-seq-rule (list)
  "Return the rule for a pure geometric sequence where the sequence only has even numbers"
  (cond ((common-ratio-p list) (list 'Xn '* (rule-ratio list)))
	 (t 'try-something-else))))))

;;sum sequence retursn true when given (1 3 4 8) or (2 5 7)
(defun sum-sequence-p (list)
  "Does the last number in the sequence equal to the sum of all the previous number? Is this a constant pattern? Then this is a sum-sequence."
  (let* ((reversed-list (reverse list))
	 (last-value (first reversed-list))
	 (second-last (second reversed-list))
	 (sum-list (apply #'+ list)))
    (and (equalp last-value
		 (- sum-list last-value))
	 (equalp second-last
		 (- sum-list (+ second-last last-value))))))

;;are all numbers in the sequence odd?
;;then the rule at the end iwll allways have Xn * multipleof2 + 1
;;if all of the list is odd, make even by minus 1 of everyvalue in the list
;;then find its multiple/geometric sequence which will be a multiple of 2
;;then state at the end that the constant difference must be + 1 as the remainder

(defun all-odd-p (list)
"Predicate which determines if all the values in a given list are odd"
  (let ((all-odd-p t))
    (dolist (number list all-odd-p)
      (if (not (oddp number))
	  (setf all-odd-p nil)))))
;;once i get to chapter 7 there will probably be an exact example of what i am doing

(defun make-list-even (list)
"When all numbers in a list are odd, every number in the list will be made even by - 1"
  (when (all-odd-p list)
    (let ((even-list () ))
      (dolist (number list (reverse even-list))
	(push (1- number) even-list)))))

;;assumes that the list given to it will be all-odd-p t otherwise it will just not work because of the when macro in make-list-even

(defun odd-seq-rule (list)
  "Returns the rule for a sequence where all the numbers in the sequence are odd"
  (let ((list (make-list-even list)))
    (rule-ratio list)
    (list 'Xn '* (rule-ratio list) '+ '1)))

;; return the rul of (2 5 11 23) which should be Xn*2 +1
;;(list 'Xn '* (rule-ratio list) '+ (rule-difference list))
;;it must have a mixture of odd and even numbers
;;whenever there is a +1 at the end of a rule and the common multiple is a multiple of 2 that means the sequence is a odd sequence
;;3 6 9 12 -> +3
;;3 7 10 13-> +4
;;3 8 11 14-> +5
;;5 10 15 20-> +5
;;doesnt actually matter


(defun triangular-seq-p (list)
  "Predicate that determines if a given sequenece has the rule X(n + 1) / 2. This should cover shapes with an odd number of sides."
  (destructuring-bind (a b c &rest remainder)
      list
    (declare (ignore remainder))
    (and (equalp a (/ (* 1 (+ 1 1)) 2))
	 (equalp b (/ (* 2 (+ 1 2)) 2))
	 (equalp c (/ (* 3(+ 1 3)) 2)))))
;;this can be made a bit better with iteration where (/ (* n (+ 1 n)) 2) but if i try that rn at my level i will struggle

;;if the first common difference doesnt work that means it if possible that it could be a geometric seq + common-diff
;; this is where you guess
;;if the sequence is of odd numberes(excluding 2) then the common difference is odd or it is a triangular sequence
;;if the sequence if of even numbers then it is probably a geometric sequence
;;check the first 2 numbers of any sequence, if the second number is odd then try a triangular sequence and a common difference or a composite-sequence
;;if they are even then it is a geometric sequence










;;write a program outputs a list sequence up to where xnth term is 100 when given the format a*n^x + 1 in a list


;;write a few functions defining special sequences

;;arithmeic sequence
()


;;geometric sequence
;;triangular numbers
;;fibbonachi sequence
;;square numbers
;;cube numbers
;;partial sums (prime number sequence)
