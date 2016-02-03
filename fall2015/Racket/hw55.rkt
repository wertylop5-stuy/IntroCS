#| recursion
   hw#55
   "Stanley Lin <slin55055@gmail.com> period9
   worked with no one
   help from no one
   time started: 5:00pm
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Find the atoms in a list of n elements
Find the even atoms in a list of n elements

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.


0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Only the list needs to be given

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
An integer

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
He can find the atoms in a list minus the first element.

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
first element: if first element list, find atoms in that list. else
    return 0
remainder of list: find the atoms in a list n - 1
how to join it: add with the + operator and 1



2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
Check if the list is null;

2b.  How can you solve the base case for this problem?
Just return 0

end of structuring questions
-------------------------------------------- |# 
(display "#1 finish countAtoms") (newline)

(define (countAtoms x)
  (cond
    ((null? x) 0)
    ((list? (car x)) (+ (countAtoms (cdr x)) (countAtoms (car x))))
    (else (+ 1 (countAtoms (cdr x))))))

#|(define (countAtoms x)
  (cond
    ((= (length x) 1) 1)
    (else (+ 1 (countAtoms (cdr x)) (countAtoms (car x))))))|#

(display "-----------------") (newline) (newline)

(display "#2 countEvensDeep") (newline)

;Probs innefficient
(define (countEvensDeep x)
  (cond
    ((null? x) 0)
    ((list? (car x)) (+ (countEvensDeep (cdr x)) (countEvensDeep (car x))))
    ((even? (car x)) (+ 1 (countEvensDeep (cdr x))))
    (else (countEvensDeep (cdr x)))))

(display "-----------------") (newline) (newline)