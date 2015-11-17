;  appending lists
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 7:44pm

; symbols for symbols
(define fname 'marvin)
(define lname 'gaye) 

; symbols for lists
(define m0 '(a b))
(define m1 '(0 1 2))
(define sub '(n (e  s) t))

; one atom, 12
(define atom 12)  ; not a list

(display "#0 state definitions") (newline)

;list creates a list with the supplied elements
;append merges two lists together

(display "-----------------") (newline) (newline)


(display "#1 explain how literals build lists") (newline)

(display      '(fname lname)   )(newline)
;There will be two elements in the above list
;(fname lname)

(display "-----------------") (newline) (newline)

(display (list fname lname) )(newline)
;There will be two elements in the above list
;(marvin gaye)

(display "-----------------") (newline) (newline)

(display (list m0 m1) )(newline)
;There will be two elements in the above list
;((a b)(0 1 2))

(display "-----------------") (newline) (newline)

(display (append m0 m1) )(newline)
;There will be one element in the above list
;(a b 0 1 2)

(display "-----------------") (newline) (newline)

(display (append m0 m1) )(newline)
;There will be one element in the above list
;(a b 0 1 2)

(display "-----------------") (newline) (newline)

(display (append m0 sub) )(newline) ; lists can be elements; no flattening
;There will be five elements in the above list
;(a b n (e s) t)

(display "-----------------") (newline) (newline)

(display  (list )       )(newline)
;There will be no elements in the above list
;()


(display "-----------------") (newline) (newline)

(display  '()           )(newline)
;There will be no elements in the above list
;()

(display "-----------------") (newline) (newline)

(display  (list '())    )(newline)
;There will be one element in the above list
;(())

(display "-----------------") (newline) (newline)

(display  (list   '() m0)   )(newline)
;There will be two elements in the above list
;(()(a b))

(display "-----------------") (newline) (newline)

(display  (append '() m0)   )(newline)
;There will be one element in the above list
;(a b)

(display "-----------------") (newline) (newline)

(display  (list   '() '())  )(newline)
;There will be two elements in the above list
;(()())

(display "-----------------") (newline) (newline)

(display  (append '() '())  )(newline)
;There will be one element in the above list
;()

(display "-----------------") (newline) (newline)

(display (append (list atom) m0))(newline)

(display "-----------------") (newline) (newline)

(display (append m0 (list atom)))(newline)

(display "-----------------") (newline) (newline)


(display "#16 acceptListParam") (newline)

(define acceptListParam
  (lambda (a)
    (car a)))

(display (acceptListParam '(first second third)) )
(display " ...should be first") (newline)
(display "-----------------") (newline) (newline)


(display "#17 rev3") (newline)

(define rev3
  (lambda (x)
    (append (cddr x) (list (cadr x) (car x)))))

(rev3 '(backward ran sentences))
(display "...should be (sentences ran backward)") (newline)
(display "-----------------") (newline) (newline)


(display "#18 palindrome3") (newline)

(define palindrome3
  (lambda (x)
    (append x (rev3 x))))

(palindrome3 '(will my love))
(display "...should be (will my love love my will)") (newline)

(display "-----------------") (newline) (newline)