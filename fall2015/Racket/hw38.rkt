;  first and rest of lists with car and cdr
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 2:40pm

;Program starts with (define M '(a (b c) d ((e f) g h) i))
(define M '(a (b c) d ((e f) g h) i))

(display "#1 3 calls") (newline)
;cdr returns the "rest" of the list (every element other
;than the first one in a list)
;(cdr M)
;returns
;'((b c) d ((e f) g h) i)

;car returns the first element in the list
;(car '((b c) d ((e f) g h) i))
;returns
;'(b c)

;car called again, gets first element
;(car '(b c))
;returns
;b

(car (car (cdr M)))


(display "#2 5 calls") (newline)
;cdr returns rest of list
;(cdr M)
;returns
;'((b c) d ((e f) g h) i)

;cdr called again
;(cdr '((b c) d ((e f) g h) i))
;returns
;'(d ((e f) g h) i)

;cdr called again
;(cdr '(d ((e f) g h) i))
;returns
;'(((e f) g h) i)

;car returns first element
;(car '(((e f) g h) i))
;returns
;'((e f) g h)

;car returns first element
;(car '((e f) g h))
;returns
;'(e f)

(car (car (cdr (cdr (cdr M)))))