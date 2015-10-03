;hw11
;Find roots of -0.618x2 + 1.618x + 1.732 = 0
(display "One root is ")
(display
 (/
  (+
   ;negative b
   -1.618
   (sqrt
    (-
     ;b squared
     (expt 1.618 2)
     (*
      ;The 4 in 4ac
      4
      ;a times c
      (* -0.618 1.732)
      )
     )
    )
   )
  ;whole thing over 2a
  (* 2 -0.618)
  )
 )

(newline)

(display "The other root is ")
(display
 (/
  (-
   ;negative b
   -1.618
   (sqrt
    (-
     ;b squared
     (expt 1.618 2)
     (*
      ;The 4 in 4ac
      4
      ;a times c
      (* -0.618 1.732)
      )
     )
    )
   )
  ;whole thing over 2a
  (* 2 -0.618)
  )
 )