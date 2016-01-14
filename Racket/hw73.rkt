;  hw#73
;  extracting
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 5:39am

(define x '(sample problem))

(car x);sample
(newline)
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(define x '(a (b) c))

(car (cdr x));(b)
(car (car (cdr x)));b
(newline)
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(define x '(init later muchLater stillLater final))

(car (cdr (cdr (cdr (cdr x)))));final
(newline)
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(define x '(((2)) ((cd) (d c a) (z x))))

(car (car (car x)));2
(car (cdr (car (cdr (car (cdr x))))));c
(car (car (car (cdr x))));cd
(newline)
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(define x '( ( ) ( ) ( ( ( aa ) ( ab ) ( a ) ) ) abc))

(car (car (car (cdr (cdr x)))));(aa)
(car (car (cdr (car (car (cdr (cdr x)))))));ab
(car (cdr (cdr (car (car (cdr (cdr x)))))));(a)
(car (cdr (cdr (cdr x))));abc