;  more recursion
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 10:21am



(display "#1 shorthand for creating procedures") (newline)

(define (rev3 x)
    (append (cddr x) (list (cadr x) (car x))))

(rev3 '(backward ran sentences))
(display "...should be (sentences ran backward)") (newline)

(define (rev3_theOtherWay x)
    (list (caddr x) (cadr x) (car x)))

(rev3_theOtherWay '(backward ran sentences))
(display "...should be (sentences ran backward)") (newline)

(display "-----------------") (newline) (newline)