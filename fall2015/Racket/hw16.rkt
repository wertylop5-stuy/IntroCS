;hw16
;Using lambda expressions
(display
 ( (lambda (base0 base1 height)
     (* height 0.5 (+ base0 base1)))
   2 3 4)
 )

(newline)

;17.5
(display
 ((lambda (base0 base1 height)
    (* height 0.5 (+ base0 base1)))
  3 4 5)
 )