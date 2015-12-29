(define (sumOfList x tot)
  (cond
    ((null? x) tot)
    (else (sumOfList (cdr x) (+ (car x) tot)))))

(define (sumOfEvens x tot)
  (cond
    ((null? x) tot)
    ((even? (car x)) (sumOfEvens (cdr x) (+ (car x) tot)))
    (else (sumOfEvens (cdr x) tot))))

(define (reverseOfList x ans)
  (cond
    ((null? x) ans)
    (else (reverseOfList (cdr x) (append (list (car x)) ans)))))

;curNum starts at 1, ans starts at 1
(define (factorialForwards x curNum ans)
  (cond
    ((< x curNum) ans)
    (else (factorialForwards x (+ curNum 1) (* curNum ans)))))

;numOne starts at 0, numTwo starts at 1
(define (fibForwards x numOne numTwo)
  (cond
    ((= x 0) numOne)
    ((= x 1) numTwo)
    (else (fibForwards (- x 1) numTwo (+ numOne numTwo)))))