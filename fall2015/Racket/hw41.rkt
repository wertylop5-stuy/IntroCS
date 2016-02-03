;  list manipulation
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 2:11pm

(display "#1 access each element") (newline)

(define Neil
   '( one small step for man)
   )

(display (car Neil))(newline)
(display (cadr Neil))(newline)
(display (caddr Neil))(newline)
(display (cadddr Neil))(newline)
(display (cadr (cdddr Neil)))(newline)

(display "-----------------") (newline) (newline)


(display "#2 help") (newline)

(define helped (list (car Neil) (cadr Neil) (caddr Neil)
                     (cadddr Neil) 'a (car (cddddr Neil))))

(display helped ) (newline)
(display " ...should be(one small step for a man)") (newline)

(display "-----------------") (newline) (newline)


(display "#3 have car return a list") (newline)

(define L (list '(a list) 5 6))

(display (car L))
(display " ...should be (a list)") (newline)

(display "-----------------") (newline) (newline)


(display "#4 composed procedures, Jeopardy-style") (newline)

(define thing '(((a (b)) (c (d e (f)) g) h) (i (j k) l)))

(display (cadr thing))(newline)
(display (cdadr thing))(newline)
(display (cadadr thing))(newline)
(display (cdadar thing))(newline)

(display "-----------------") (newline) (newline)