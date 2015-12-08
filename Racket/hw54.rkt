(define (duplicate x)
  (cond
    ((= (length x) 1) (list (car x)(car x)))
    (else (append (list (car x) (car x)) (duplicate (cdr x))))))