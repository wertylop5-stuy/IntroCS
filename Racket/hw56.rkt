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
YOu are trying to see if a flat list of n elements has a certain element
You are given a list of n elements and needto convert it to a flat list of atoms.

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(hasA? (list) 5);#f
(hasA? (list 1) 1);#t
(hasA? (list 4 6 5) 1);#f

(flattenPrep (list ));()
(flattenPrep (list 1 4));(1 4)
(flattenPrep (list 3 (list 5) 3));(3 5 3)
(flattenPrep (list (list 3(list 2) 4(list 7 (list(list(list)))))(list 4 (list 4))));(3 2 4 7 4 4)

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
A list and an element needs to be supplied
Only the list needs to be supplied

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
A boolean
A list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
He can say if a given list n-1 contains a certain element
He can append the first element of the list flattened to the rest of the list flattened

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
If the first element is equal to an element e, return true
Call the procedure on the rest of the list
No need to combine answers

If the first element is a list, call the procedure again, else return the car of x
Call the procedure on the rest of the list
I will append all the answers together

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

#|
Aims:

0. What is the purpose of this aim?
The aim is used to provide a roadmap as to what will be accomplished for that day. It also helps to review what happened during the lesseon

1. Progrmaming with booleans in recursion
Using an OR or similar is unecessary. You can utilize short circuiting to make the running time of an algorithm faster

2. What is the equal? procedure
The equal? procedure can compare any two data types. It first determines if the arguments are of the same type, then
    it checks if they are the same


|#

(display "#2 hasA?") (newline)

(define (hasA? x e)
  (cond
    ((null? x) #f)
    ((= (car x) e) #t)
    (else (hasA? (cdr x) e))))

(hasA? (list) 5);#f
(hasA? (list 1) 1);#t
(hasA? (list 4 6 5) 1);#f

(display "-----------------") (newline) (newline)


(display "#3 prepare for flatten") (newline)

;aka flatten
(define (flattenPrep x)
  (cond
    ((null? x) (list))
    ((list? (car x)) (append (flattenPrep (car x)) (flattenPrep (cdr x))))
    (else (append (list (car x)) (flattenPrep (cdr x))))))

(flattenPrep (list ));()
(flattenPrep (list 1 4));(1 4)
(flattenPrep (list 3 (list 5) 3));(3 5 3)
(flattenPrep (list (list 3(list 2) 4(list 7 (list(list(list)))))(list 4 (list 4))));(3 2 4 7 4 4)

(display "-----------------") (newline) (newline)