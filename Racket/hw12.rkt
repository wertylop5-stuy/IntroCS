;hw12
;Find 10th and 7th fibonacci numbers using Binet's formula
(display
(/
 (-
  (expt
   (/
    (+ 1 (sqrt 5))
    2
    )
   ;nth number
   7)
  
  (expt
   (/
    (- 1 (sqrt 5))
    2
    )
   ;nth number
   7)
  )
 (sqrt 5)
 )
)

(newline)

(display
(/
 (-
  (expt
   (/
    (+ 1 (sqrt 5))
    2
    )
   ;nth number
   10)
  
  (expt
   (/
    (- 1 (sqrt 5))
    2
    )
   ;nth number
   10)
  )
 (sqrt 5)
 )
)