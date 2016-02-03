; template for general homework

;  hw#25
;  more quotient and modulo
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 8:00pm

(display "#1 getDigit") (newline)
(define getDigit
  (lambda (number base place)
    (modulo (quotient number (expt base place)) 5)
    )) ; end of lambda and define

; tests
(display (getDigit 863 5 2))(newline)
(display "...should be 4") (newline)
(display "-----------------") (newline) (newline)


(display "#2 bwkYear") (newline)
(define bwkYear
  (lambda (serviceMonth)
    (quotient serviceMonth 12)
    )) ; end of lambda and define

; tests
(display (bwkYear 13))(newline)
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)


(display "#3 bwkMonth") (newline)
(define bwkMonth
  (lambda (serviceMonth)
    (modulo serviceMonth 12)
    )) ; end of lambda and define

; tests
(display (bwkMonth 18))(newline)
(display " ...should be 6") (newline)
(display "-----------------") (newline) (newline)


(display "#4 year_monthsLater") (newline)
(define year_monthsLater
  (lambda (startYear startMonth plusMonths)
    (+ startYear (quotient (+ startMonth plusMonths) 12))
    )) ; end of lambda and define

; tests
(display (year_monthsLater 1 11 2))(newline)
(display " ...should be 2") (newline)
(display "-----------------") (newline) (newline)


(display "#5 month_monthsLater") (newline)
(define month_monthsLater
  (lambda (startYear startMonth plusMonths)
    (modulo (- (+ (* startYear 12) startMonth plusMonths) (* (year_monthsLater startYear startMonth plusMonths) 12)) 12)
    )) ; end of lambda and define

; tests
(display (month_monthsLater 1 11 2))(newline)
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)