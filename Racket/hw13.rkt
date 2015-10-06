;hw13
;using symbols (aka variables)

(define fav 5)

;~~~~~~~~~~~~~~~~~~~~~~FAVORITE NUMBER~~~~~~~~~~~~~~~~~~~~~~
(display "My favorite number is ")
(display fav) (newline)

(display "My favorite number divided by 2 is ")
(display (/ fav 2)) (newline)

;display negative fav
(display "The negative of my favorite number is ")
(display (* fav -1)) (newline)
(newline)


;~~~~~~~~~~~~~~~~~~~SECOND-FAVORITE NUMBER~~~~~~~~~~~~~~~~~~~
(display "The absolute value of my second-favorite number is ")
(display (abs fav))(newline)

(display "The fourth root of the fourth power of my second-favorite number is ")
(display (expt (expt fav 4) 1/4))(newline)
(newline)

;~~~~~~~~~~~~~~~~~~~QUADRATIC EQUATION~~~~~~~~~~~~~~~~~~~
(define a -0.618) (define b 1.618) (define c 1.732)
(define discriminant_sqrt
  (sqrt
   (-
    (expt b 2)
    (* 4 a c)
    )
   )
  )

(display "One root is ")
(display
 (/
  (-
   (* b -1) discriminant_sqrt
   )
  (* 2 a)
  )
 )

(newline)

(display "The other root is ")
(display
 (/
  (+
   (* b -1) discriminant_sqrt
   )
  (* 2 a)
  )
 )
