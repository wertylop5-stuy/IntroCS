;  hw#30
;  nested if
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 1:55pm

(display "#1 three-part invention") (newline)

(define three
  (lambda (w)
    (if (< w 0)
        -1
        (if (<= w 4)
            3.5
            7)
        )))

(display (three -1))(newline);-1
(display (three 0))(newline);3.5
(display (three 3))(newline);3.5
(display (three 4))(newline);3.5
(display (three 5))(newline);7

(display "-----------------") (newline) (newline)


(display "#2 taxes") (newline)

(define bracket
  (lambda (taxableIncome)
    (if (<= taxableIncome 9075)
        0.1
        (if (<= taxableIncome 36900)
            0.15
            (if (<= taxableIncome 89350)
                0.25
                (if (<= taxableIncome 186350)
                    0.28
                    (if (<= taxableIncome 405100)
                        0.33
                        (if (<= taxableIncome 406750)
                            0.35
                            0.396)
                        )
                    )
                )
            )
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

;In the 2015 chart, if a value was, for example, 9225, it would correspond to two categories

(display "-----------------") (newline) (newline)


(display "#3 max3") (newline)

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
(display (max3 3 3 3))(newline)

(display "-----------------") (newline) (newline)