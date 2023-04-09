
;;write a program that finds the sequence of a list of given numbers. the input is the list and the output is the formula for the given sequence, i.e 2n + 1
;;how to determine if something is a arithmetic sequence
(defun common-difference-p (&rest list)
  "Predicate determines if given number sequence has a common difference"
  (equalp (- (second list) (first list)) (- (third list) (second list))))

(defun rule-difference (&rest list)
  "Calculates the constant difference of an arithmetic sequence"
  (- (second list) (first list)))

(defun arithmetic-seq-rule (&rest list)
  ;;is it a arithmetic sequence?
  ;;what is the constant?
  ;;output a list conatining the arithmetic rule to add or subtract from the end of the sequence
  )


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
