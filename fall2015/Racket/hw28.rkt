;  hw#28
;  if statements
;   "Stanley Lin <slin55055@gmail.com> period9
;   worked with no one
;   help from no one
;   time started: 6:40pm

(display "#1 improve autotip") (newline)

(define autotip_dollars
  (lambda (party food)
    (if (>= party 8)
        (+ food (* 0.18 food))
        food)))

(display (autotip_dollars 7 1))(newline);display 1
(display (autotip_dollars 8 100))(newline);display 118
(display (autotip_dollars 20 100))(newline);display 118

(display "-----------------") (newline) (newline)


(display "#2 absolute value") (newline)

(define my-abs
  (lambda (num)
    (if (< num 0)
        (- num)
        num)))

(display (my-abs 3))(newline);3
(display (my-abs -5))(newline);5
(display (my-abs 0))(newline);0

(display "-----------------") (newline) (newline)


(display "#3 max2") (newline)

(define max2
  (lambda (num1 num2)
    (if (= num1 num2)
        num1
        (if (< num1 num2)
            num2
            num1)
        )))

(display (max2 0 0))(newline);0
(display (max2 1 2))(newline);2
(display (max2 5 1))(newline);5

(display "-----------------") (newline) (newline)


(display "#4 two-part invention") (newline)

(define two
  (lambda (chooser)
    (if (<= chooser 3)
        12
        (* 4 chooser))))

(display (two 2))(newline);12
(display (two 3))(newline);12
(display (two 10))(newline);40

(display "-----------------") (newline) (newline)