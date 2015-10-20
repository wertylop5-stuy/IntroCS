;hw21
;helper procedures
;author: Stanley Lin <slin55055@gmail.com>
;worked with no one
;help from no one

(display "#1 circleArea_fromRadius") (newline)
(display "-----------------") (newline) (newline)

(define circleArea_fromRadius
  (lambda (radius)
    (* 3.14 (expt radius 2)
       )
    )
  )

(circleArea_fromRadius 2)
(circleArea_fromRadius 3)

(display "#2 circleArea_fromDiameter") (newline)
(display "-----------------") (newline) (newline)

(define circleArea_fromDiameter
  (lambda (diameter)
    (circleArea_fromRadius (/ diameter 2))))

(circleArea_fromDiameter 4)
(circleArea_fromDiameter 6)

(display "#3 annulusArea") (newline)
(display "-----------------") (newline) (newline)

;A ring
(define annulusArea
  (lambda (outerRad innerRad)
    (- (circleArea_fromRadius outerRad) (circleArea_fromRadius innerRad))))

(annulusArea 3 2)

(display "#4 targetArea") (newline)
(display "-----------------") (newline) (newline)

(define targetArea
  (lambda (radius)
    (+ (annulusArea (* 2 radius) radius) (annulusArea (* 4 radius) (* 3 radius)) (annulusArea (* 6 radius) (* 5 radius)))))

(targetArea 4)