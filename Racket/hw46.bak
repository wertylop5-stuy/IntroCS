;  more ToH
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 7:02pm

(display "#1 signature and test") (newline)

(define (ToH a b c amt)
  (display "    ")(display a)(newline)
  (display "    ")(display b)(newline)
  (display "    ")(display c)(newline)
  (display "    ")(display amt)(newline)(newline)

  (cond
    ((= 1 amt) (string-append "Move the top disk from " a " to " c "\n"))
    (else (string-append (ToH a c b (- amt 1))
                         "Move the top disk from " a " to " c "\n"
                         (ToH b a c (- amt 1))))))

;(display (ToH "a""b""c" 1))(newline);Move top disk from a to c
(display (ToH "a""b""c" 5))(newline);Move top disk from b to c

(display "-----------------") (newline) (newline)