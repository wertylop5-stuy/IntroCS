;hw17
;naming lambdas
;author: Stanley Lin <slin55055@gmail.com>
;worked with no one
;help from no one

(display "#2 circleArea") (newline)

(define circleArea
  (lambda (radius)
    (* 3.14 (expt radius 2)
       )
    )
  )

(display (circleArea 4)) (newline)
(display (circleArea 10)) (newline)

(display "-----------------") (newline) (newline)

(display "#3 oneRoot") (newline)

(define oneRoot
  (lambda (a b c)
    (/
     (+
      (- b)
       (sqrt
        (-
        (expt b 2)
        (* 4 a c)
        )
       )
      )
     (* 2 a)
     )
    )
  )

(display (oneRoot 1 2 -1)) (newline)
(display (oneRoot 3 4 5)) (newline)

(display "-----------------") (newline) (newline)