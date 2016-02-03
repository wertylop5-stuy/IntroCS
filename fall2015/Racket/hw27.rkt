;  hw#27
;  boolean operators
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 5:00pm

(display "#2 pictures to code") (newline)
(define a
  (lambda (num)
    (or (and (< -1 num) (<= num 3))
        (and (<= 4 num) (< num 6)))))

(display (a -1))(newline);#f
(display (a 3))(newline);#t
(display (a 6))(newline);#f

(display "-----------------") (newline) (newline)

(define b
  (lambda (num)
    (or (and (< 2 num)(< num 3.7))
        (and (< 3.7 num)(<= num 5)))))

(display (b 2))(newline);#f
(display (b 3.7))(newline);#f
(display (b 5))(newline);#t
(display (b 3))(newline);#t
(display (b 4))(newline);#t
(display (b 1))(newline);#f
(display (b 6))(newline);#f
(display "-----------------") (newline) (newline)

(define c
  (lambda (num)
    (or (<= num 4)(= num 5.6)(> num 7))))

(display (c 4))(newline);#t
(display (c 5.6))(newline);#t
(display (c 7))(newline);#f
(display (c 3))(newline);#t
(display (c 5))(newline);#f
(display (c 6))(newline);#f
(display (c 8))(newline);#t
(display "-----------------") (newline) (newline)

(define d
  (lambda (num)
    (not (integer? num))))

;could also do

;(define d
;  (lambda (num)
;    (inexact? num)))

(display (d -3))(newline);#f
(display (d 0))(newline);#f
(display (d 6))(newline);#f
(display (d 5.5))(newline);#t
(display (d -3.4))(newline);#t
(display "-----------------") (newline) (newline)