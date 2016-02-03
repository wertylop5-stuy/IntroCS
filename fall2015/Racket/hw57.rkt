#| recursion
   hw#57
   "Stanley Lin <slin55055@gmail.com> period9
   worked with no one
   help from no one
   time started: 4:50pm
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
WE need to create a list of atoms from a list of n elements
WE need to create a list of every other element in a list of n elements starting with thte first element

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(flatten (list ));()
(flatten (list (list 5) 6));(5 6)
(flatten (list 4 7(list (list 5 6) 2) (list 1)));(4 7 5 6 2 1)

(alternating (list ));()
(alternating (list 4));(4)
(alternating (list 2 4));(2)
(alternating (list 3 8 7));(3 7)

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Only the list needs to be given for both problems

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
Both will be a list

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
The recursive call can extract the atoms from the list except for the first element
The recursive call can every other element in a list without the first two elements

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
If the first element is a list, call the procedure on the first element. Otherwise, return a list containing only the first element
Call the function using the rest of the list and combine the results using append.

If the list has no elements, return an empty list. If it has one element, return a list containing only the first element
Call the function without the first two elements of the list and combine the results using append.

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
If the list has no elements
If the list has no elements or if it has one element

2b.  How can you solve the base case for this problem?
REturna  null list
return a null list or returna  list with only the first element

end of structuring questions
-------------------------------------------- |# 

(display "#1 flatten") (newline)

(define (flatten x)
  (cond
    ((null? x) (list))
    ((list? (car x)) (append (flatten (car x)) (flatten (cdr x))))
    (else (append (list (car x)) (flatten (cdr x))))))

(flatten (list ));()
(flatten (list (list 5) 6));(5 6)
(flatten (list 4 7(list (list 5 6) 2) (list 1)));(4 7 5 6 2 1)

(display "-----------------") (newline) (newline)


(display "#2 alternating") (newline)

(define (alternating x)
  (cond
    ((null? x) '())
    ((= (length x) 1) x)
    (else (append (list (car x)) (alternating (cdr (cdr x)))))))

(alternating (list ));()
(alternating (list 4));(4)
(alternating (list 2 4));(2)
(alternating (list 3 8 7));(3 7)

(display "-----------------") (newline) (newline)