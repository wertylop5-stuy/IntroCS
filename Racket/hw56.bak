#| recursion
   hw#56
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


0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.


0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?


0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?


1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".


1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?


2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.


2b.  How can you solve the base case for this problem?


end of structuring questions
-------------------------------------------- |# 

(define (hasA? x e)
  (cond
    ((null? x) #f)
    ((= (car x) e) #t)
    (else (hasA? (cdr x) e))))