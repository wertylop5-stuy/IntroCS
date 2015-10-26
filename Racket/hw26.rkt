;  hw#26
;  boolean operators
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 6:20pm

(display "#1 predict ") (newline)
;#t
;#f
;#t
;binds #t to p
;#f
;#t

(display (and (<= 3 4)(>= 4 3)))(newline)
(display (and (<= 3 4)(>= 4 3)(> 3 4) ))(newline)
(display (or (<= 3 4)(>= 4 3)(> 3 4) ))(newline)

(define p (and (<= 3 4)(>= 4 3)))
(display (not p))(newline)
(display (not (not p)))(newline)
(display "-----------------") (newline) (newline)


(display "#2 Which answer when?") (newline)
(define MrsWhich
  (lambda (p)
    (= 0 (modulo p 12))
    )) ; end of lambda and define
;returns true with any multiple of 12
;returns false with all other numbers
(display "-----------------") (newline) (newline)


(display "#3 Which answer when again?") (newline)
(define DrWho
  (lambda (q)
    (not (= 0 (modulo q 2)))
    )) ; end of lambda and define
;returns true with any multiple of 2 (even numbers)
;returns false with any other number (odd numbers)
(display "-----------------") (newline) (newline)


(display "#4 hw25 calendar problem") (newline)
;I have already done it, so I am copying my answers over


(display "#4a getDigit") (newline)
(define getDigit
  (lambda (number base place)
    (modulo (quotient number (expt base place)) 5)
    )) ; end of lambda and define

; tests
(display (getDigit 863 5 2))(newline)
(display "...should be 4") (newline)
(display "-----------------") (newline) (newline)


(display "#4b bwkYear") (newline)
(define bwkYear
  (lambda (serviceMonth)
    (quotient serviceMonth 12)
    )) ; end of lambda and define

; tests
(display (bwkYear 13))(newline)
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)


(display "#4c bwkMonth") (newline)
(define bwkMonth
  (lambda (serviceMonth)
    (modulo serviceMonth 12)
    )) ; end of lambda and define

; tests
(display (bwkMonth 18))(newline)
(display " ...should be 6") (newline)
(display "-----------------") (newline) (newline)


(display "#4d year_monthsLater") (newline)
(define year_monthsLater
  (lambda (startYear startMonth plusMonths)
    (+ startYear (quotient (+ startMonth plusMonths) 12))
    )) ; end of lambda and define

; tests
(display (year_monthsLater 1 11 2))(newline)
(display " ...should be 2") (newline)
(display "-----------------") (newline) (newline)


(display "#4e month_monthsLater") (newline)
(define month_monthsLater
  (lambda (startYear startMonth plusMonths)
    (modulo (- (+ (* startYear 12) startMonth plusMonths) (* (year_monthsLater startYear startMonth plusMonths) 12)) 12)
    )) ; end of lambda and define

; tests
(display (month_monthsLater 1 11 2))(newline)
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)