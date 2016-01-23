(define (rlz x)
  (cond
    ((or (null? x) (not (= (car x) 0))) x)
    (else (rlz (cdr x)))))

(define (mergeList x y)
  (cond
    ((null? x) y)
    ((null? y) x)
    ((>= (car x) (car y)) (append (list (car y)) (mergeList x (cdr y))))
    (else (append (list (car x)) (mergeList (cdr x) y)))))