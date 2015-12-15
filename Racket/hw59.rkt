;  hw#59
;  recursion
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 5:53pm

(display "#1 Fib") (newline)

(define (Fib x)
  (cond
    ((= x 0) 0)
    ((= x 1) 1)
    (else (+ (Fib (- x 1)) (Fib (- x 2))))))

(display "-----------------") (newline) (newline)


(display "#2 factorial") (newline)

(define (factorial x)
  (cond
    ((= x 0) 1)
    (else (* x (factorial (- x 1))))))

(display "-----------------") (newline) (newline)