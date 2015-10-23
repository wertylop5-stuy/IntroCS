;hw24
;Return of GoF
;author: Stanley Lin <slin55055@gmail.com>
;worked with no one
;help from no one

(display "#0 getGoF") (newline)
(display "-----------------") (newline) (newline)

(define getGof
  (lambda (sophs)
    (quotient sophs 5)))

(display (getGof 863))
(newline)

(display "#1 units") (newline)
(display "-----------------") (newline) (newline)

(define units
  (lambda (sophs)
    (modulo sophs 5)))

(display (units 863))
(newline)

(display "#2 getGoFGoF") (newline)
(display "-----------------") (newline) (newline)

(define getGofGof
  (lambda (sophs)
    (quotient (getGof sophs) 5)))

(display (getGofGof 863))
(newline)

(display "#3 GoFExcludedFromTheGofGof") (newline)
(display "-----------------") (newline) (newline)

(define GofExcludedFromTheGofGof
  (lambda (sophs)
    (modulo (getGoFGoF sophs) 5)))

(display (GofExcludedFromTheGofGof 863))
(newline)




(display "#4 continue the pattern") (newline)
(display "-----------------") (newline) (newline)

;Three
(define getGofGofGof
  (lambda (sophs)
    (quotient (getGofGof sophs) 5)))

(display (getGofGofGof 863))
(newline)

(define GoFExcludedFromTheGofGofGof
  (lambda (sophs)
    (modulo (getGofGofGof sophs) 5)))

(display (GoFExcludedFromTheGofGof 863))
(newline)


;Four
(define getGofGofGofGof
  (lambda (sophs)
    (quotient (getGofGofGof sophs) 5)))

(display (getGofGofGofGof 863))
(newline)

(define GoFExcludedFromTheGofGofGofGof
  (lambda (sophs)
    (modulo (getGofGofGofGof sophs) 5)))

(display (GoFExcludedFromTheGofGofGofGof 863))
(newline)

;Five
(define getGofGofGofGofGof
  (lambda (sophs)
    (quotient (getGofGofGofGof sophs) 5)))

(display (getGofGofGofGofGof 863))
(newline)

(define GoFExcludedFromTheGofGofGofGofGof
  (lambda (sophs)
    (modulo (getGofGofGofGofGof sophs) 5)))

(display (GoFExcludedFromTheGofGofGofGofGof 863))
(newline)