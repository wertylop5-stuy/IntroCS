;  hw#31
;  using cond
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 6:00pm

(display "#0 max3, revisited") (newline)

(define max3
  (lambda (a b c)
    (if (> a b)
        (if (> a c)
            a
            (if (< a c)
                c
                a);else, they equal
            )
        (if (> b a)
            (if (> b c)
                b
                (if (< b c)
                    c
                    b);else, they equal
                )
            (if (> c b);a and b are equal
                c
                a)
            )
        )))

;All of these should return 3
(display (max3 1 2 3))(newline)
(display (max3 1 3 2))(newline)
(display (max3 2 1 3))(newline)
(display (max3 3 1 2))(newline)
(display (max3 2 3 1))(newline)
(display (max3 3 2 1))(newline)

(display (max3 3 3 1))(newline)
(display (max3 3 1 3))(newline)
(display (max3 1 3 3))(newline)

(display (max3 1 1 3))(newline)
(display (max3 1 3 1))(newline)
(display (max3 3 1 1))(newline)

(display (max3 3 3 3))(newline)

(display "-----------------") (newline) (newline)


(display "#3  taxes with cond") (newline)

;old bracket
;(define bracket
;  (lambda (taxableIncome)
;    (if (<= taxableIncome 9075)
;        0.1
;        (if (<= taxableIncome 36900)
;            0.15
;            (if (<= taxableIncome 89350)
;                0.25
;                (if (<= taxableIncome 186350)
;                    0.28
;                    (if (<= taxableIncome 405100)
;                        0.33
;                        (if (<= taxableIncome 406750)
;                            0.35
;                            0.396)
;                        )
;                    )
;                )
;            )
;        )))

;new bracket
(define bracket
  (lambda (taxableIncome)
    (cond
      ((<= taxableIncome 9075) 0.1)
      ((<= taxableIncome 36900) 0.15)
      ((<= taxableIncome 89350) 0.25)
      ((<= taxableIncome 186350) 0.28)
      ((<= taxableIncome 405100) 0.33)
      ((<= taxableIncome 406750) 0.35)
      (else 0.396)
      )))

(display (bracket 5))(newline);0.1
(display (bracket 9075))(newline);0.1
(display (bracket 10000))(newline);0.15
(display (bracket 36900))(newline);0.15
(display (bracket 40000))(newline);0.25
(display (bracket 89350))(newline);0.25
(display (bracket 100000))(newline);0.28
(display (bracket 186350))(newline);0.28
(display (bracket 300000))(newline);0.33
(display (bracket 405100))(newline);0.33
(display (bracket 406000))(newline);0.35
(display (bracket 406750))(newline);0.35
(display (bracket 500000))(newline);0.396

(display "-----------------") (newline) (newline)