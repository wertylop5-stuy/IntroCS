#| more recursion
   "Stanley Lin <slin55055@gmail.com> period9
   worked with no one
   help from no one
   time started: 9:47am
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Find the sum of all elements in a list of size n.
Find the sum of all even elements in a list of size n.

0b. What samples will test the procedure and what answers are required?
    You must know the expected answers, and tests should be the smallest useful ones.
(display (sumOfList '(0)))(newline);0
(display (sumOfList '(1)))(newline);1
(display (sumOfList '(1 5)))(newline);6

(display (sumOfEvens '(0)))(newline);0
(display (sumOfEvens '(2)))(newline);2
(display (sumOfEvens '(2 5 4)))(newline);6
(display (sumOfEvens '(3 5 7)))(newline);0

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Only the list needs to be given.

0d. What is the structure of the answer you will produce?
    That is, what will your function produce? A number? An integer? A Boolean? A list?
The answer will be an integer, the sum of all elements.
The answer will be an integer, the sum of all even elements.

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a to describe 
    the same problem, except smaller in size, according to your meaning for "size".
He can find the sum of elements in a list n - 1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
I will ask him to find the sum of of elements in a list n - 1 add add it to the car of the list

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version of this problem that 
     you are willing to answer? Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without asking anything of Mr. Brooks.
if the list is one element, then return the one element.
if the list is one element, then return the one element if it is even.

2b.  How can you solve the base case for this problem?
Find the car of list.

end of structuring questions
-------------------------------------------- |#

(display "#3 sumOfList") (newline)

(define (sumOfList x)
  (cond
    ((= (length x) 1) (car x))
    (else (+ (car x) (sumOfList (cdr x))))))

(display (sumOfList '(0)))(newline);0
(display (sumOfList '(1)))(newline);1
(display (sumOfList '(1 5)))(newline);6

(display "-----------------") (newline) (newline)

(display "#4 sumOfEvens") (newline)

(define (sumOfEvens x)
  (cond
    ((= (length x) 1)

     (cond
       ((even? (car x)) (car x))
       (else 0)))
    (else
     (cond
       ((even? (car x)) (+ (car x) (sumOfEvens (cdr x))))
       (else (sumOfEvens (cdr x)))))))

(display (sumOfEvens '(0)))(newline);0
(display (sumOfEvens '(2)))(newline);2
(display (sumOfEvens '(2 5 4)))(newline);6
(display (sumOfEvens '(3 5 7)))(newline);0

(display "-----------------") (newline) (newline)

(display "sumOfEvenf") (newline)

(define (sumOfEvenf x)
  (cond
    ((= (length x) 1)
     (cond
       ((not (integer? (car x))) 0)
       ((even? (car x)) (car x))
       (else 0)))
    (else
     (cond
       ((not (integer? (car x))) (sumOfEvenf (cdr x)))
       ((even? (car x)) (+ (car x) (sumOfEvenf (cdr x))))
       (else (sumOfEvenf (cdr x)))))))
     

(display (sumOfEvenf '(0)))(newline);0
(display (sumOfEvenf '(2.6)))(newline);0
(display (sumOfEvenf '(2 4.6 4 9.8 2)))(newline);8
(display (sumOfEvenf '(3 5 2.4)))(newline);0

(display "-----------------") (newline) (newline)