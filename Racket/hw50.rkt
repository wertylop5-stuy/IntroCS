#| greatest element in a list
   "Stanley Lin <slin55055@gmail.com> period9
   worked with no one
   help from no one
   time started: 6:00am
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Find the greatest element in a nonnested list of size n.

0b. What samples will test the procedure and what answers are required?
    You must know the expected answers, and tests should be the smallest useful ones.
(maxOfList '()) returns ()
(maxOfList '(2)) returns 2
(maxOfList '(2 10)) returns 10

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Only the list needs to be given.

0d. What is the structure of the answer you will produce?
    That is, what will your function produce? A number? An integer? A Boolean? A list?
The answer will be an integer, that being the greatest element

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a to describe 
    the same problem, except smaller in size, according to your meaning for "size".
He can find the greatest element of a list n - 1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
I will ask him to find the greatest element in the list n - 1. I will compare the answer against the current
highest element.

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version of this problem that 
     you are willing to answer? Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without asking anything of Mr. Brooks.
Either if the list is one element, then return the one element. If it is null, return an empty list.

2b.  How can you solve the base case for this problem?
Find the car of list.

end of structuring questions
-------------------------------------------- |#

;End of list, return 0
;if car of list > current, return the higher value

(define (size x)
  (cond
    ((null? x) 0)
    (else (+ 1 (size (cdr x))))))

(define (greaterOfTwo x y)
  (if (> x y)
      x
      y))

(define (maxOfList x)
  ;(display x)(newline)
  (cond 
    ((null? x) 0)
    (else (greaterOfTwo (maxOfList (cdr x)) (car x)))))

;I prefer this one because it covers all possiblities while also having the "smallest" possible subproblem
(define (maxOfList_reBased x)
  ;(display x)(newline)
  (cond
    ((= (size x) 1) (car x))
    ((null? x) '())
    (else (greaterOfTwo (maxOfList (cdr x)) (car x)))))

(define (maxOfList_reBased2 x)
  ;(display x)(newline)
  (cond
    ((= (size x) 2) (greaterOfTwo (car x) (car (cdr x))))
    ((= (size x) 1) (car x))
    ((null? x) '())
    (else (greaterOfTwo (maxOfList (cdr x)) (car x)))))