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
  (list 'Xnr '+ (rule-difference list)))

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
  "Return the rule for a pure geometric sequence with no common difference"
  (cond ((common-ratio-p list) (list 'Xn '* (rule-ratio list) '+ '0))
	 (t 'try-something-else))))))

;;sum sequence retursn true when given (1 3 4 8)
(defun sum-sequence-p (list)
  "Does the last number in the sequence equal to the sum of all the previous number? Is this a constant pattern? Then this is a sum-sequence"
  (let ((last (first (reverse list))))
    (and (equalp last (- (apply #'+ list) last))
	 (equalp (second last) (- (apply #'+ list) (+ (second last) (last))))))) ;;errors-out something is wrong with let argument

    
;;write code that returns the sequence Xn * 2 + 1
;; 2 5 11 23
;;(list 'Xn '* (rule-ratio list) '+ (rule-difference list))
(defun composite-seq-rule (list))

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
