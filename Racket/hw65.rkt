(define (repeat value times)
  (cond
    ((= times 0) '())
    (else (append (list value) (repeat value (- times 1))))))