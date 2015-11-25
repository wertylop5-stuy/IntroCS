;  strings and towers of Hanoi
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 7:11pm

(display "#1 concatenate strings") (newline)

(define who? "man")
(define steps "1")
(define small
  (string-append "That's " steps " small step for a " who?))
(define giant
  (string-append steps " giant leap for " who? "kind"))

(define (combo a b)
  (string-append small "; " giant))

(display (combo small giant))(newline)
(display "...should be That's 1 small step for a man; 1 giant leap for mankind.")
(newline)

(display "-----------------") (newline) (newline)


(display "#2 ToH, a start") (newline)

; assemble the moves for solving Towers of Hanoi
(define (ToH a b c amt)
  (display "    ")(display a)(newline)
  (display "    ")(display b)(newline)
  (display "    ")(display c)(newline)
  (display "    ")(display amt)(newline))

(display (ToH "a""b""c" 6))(newline)
(display (ToH "b""a""c" 2))(newline)
(display (ToH "c""b""a" 4))(newline)

(display "-----------------") (newline) (newline)