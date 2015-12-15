;  hw#58
;  recursion
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 8:04pm

(display "#1 ToH_moves") (newline)

(define (ToH_moves x)
  (cond
    ((= x 0) 0)
    (else (+ (* 2 (ToH_moves (- x 1))) 1))))

(ToH_moves 0);0
(ToH_moves 1);1
(ToH_moves 3);7

(display "-----------------") (newline) (newline)


(display "#2 sumOfSquares") (newline)

(define (sumOfSquares x)
  (cond
    ((= x 0) 0)
    (else (+ (expt x 2) (sumOfSquares (- x 1))))))

(sumOfSquares 0);0
(sumOfSquares 1);1
(sumOfSquares 2);5
(sumOfSquares 3);14

(display "-----------------") (newline) (newline)