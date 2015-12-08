#| recursion
   hw#54
   "Stanley Lin <slin55055@gmail.com> period9
   worked with no one
   help from no one
   time started: 5:26pm
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
All the problems involve performing an operation on a list of n elements.

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(duplicate '(1));(1 1)
(duplicate '(3 6));(3 3 6 6)
(duplicate '(4 7 6));(4 4 7 7 6 6)

(copyOmittingOdd '(2));()
(copyOmittingOdd '(1));(1 1)
(copyOmittingOdd '(2 5 7 4));(5 5 7 7)

(allButLast '(1));()
(allButLast '(4 5 6));(4 5)
(allButLast '(4 5 6 7 8));(4 5 6 7)

(uncar '(1));1
(uncar '(2 6));6
(uncar '(5 6 7));7

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Only the list needs to be given

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
#1-3 is a list. 4 is a integer;

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
He can perform the same operation on a list of size n-1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
I will use the result of his answer and do something like adding it to the final result.

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
Either null or a list of one element.

2b.  How can you solve the base case for this problem?
Get the car of the list or return an empty list

end of structuring questions
-------------------------------------------- |#

(display "#1 duplicate") (newline)

(define (duplicate x)
  (cond
    ((null? x) '())
    (else (append (list (car x) (car x)) (duplicate (cdr x))))))

(display "-----------------") (newline) (newline)

(duplicate '(1));(1 1)
(duplicate '(3 6));(3 3 6 6)
(duplicate '(4 7 6));(4 4 7 7 6 6)


(display "#2 copyOmittingOdd") (newline)

(define (copyOmittingOdd x)
  (cond
    ((null? x) '())
    ((odd? (car x)) (append (list (car x) (car x)) (copyOmittingOdd (cdr x))))
    (else (copyOmittingOdd (cdr x)))))

(copyOmittingOdd '(2));()
(copyOmittingOdd '(1));(1 1)
(copyOmittingOdd '(2 5 7 4));(5 5 7 7)

(display "-----------------") (newline) (newline)


(display "#3 allButLast") (newline)

(define (allButLast x)
  (cond
    ((= (length x) 1) '())
    (else (append (list (car x)) (allButLast (cdr x))))))

(allButLast '(1));()
(allButLast '(4 5 6));(4 5)
(allButLast '(4 5 6 7 8));(4 5 6 7)

(display "-----------------") (newline) (newline)


(display "#4 last") (newline)

(define (uncar x)
  (cond
    ((= (length x) 1) (car x))
    (else (uncar (cdr x)))))

(uncar '(1));1
(uncar '(2 6));6
(uncar '(5 6 7));7

(display "-----------------") (newline) (newline)