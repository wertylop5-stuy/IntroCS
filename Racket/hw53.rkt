#|  Lots of recursion
    hw#53
    Stanley Lin <slin55055@gmail.com> period9
    worked with Christopher Yip
    help from Christopher Yip
    time started: 7:00pm
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
We need to reverse a list of n elements.

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
(reverseOfList '(1));(1)
(reverseOfList '(1 4));(4 1)
(reverseOfList '(1 2 6 4 5));(5 4 6 2 1)

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Only the list needs to be supplied

0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
The answer will be a list.

1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
Mr Brooks can append the first element of the list to the back of the reversed list.

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
I will ask him to append the first element of the list to the back of the list n-1. I display this as one list.

2  structure of the base case solution
--------------------------------------
2a.  What is the base case?  That is what is the smallest version 
     of this problem that you are willing to answer?
     Equivalently, what is the smallest version that it makes 
     any sense for me to ask you? 
     You must be able to solve this smallest version without
     asking anything of Mr. Brooks.
The smallest version is if the list is one element.

2b.  How can you solve the base case for this problem?
I will solve it by returning the list

end of structuring questions
-------------------------------------------- |# 
(display "#1 base case for sumOfList") (newline)

(define sumOfList 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (= (length L) 1))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        (+  (sumOfList (cdr L))
            (car L)
            )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        (car L)
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

(sumOfList '(1));1
(sumOfList '(1 2 3));6
(sumOfList '(5 6));11

(display "-----------------") (newline) (newline)


(display "#3 base case for sumOfEvens") (newline)

; is \num is to be included in the sum?
(define amountToAdd
  (lambda (num)
    (if (and (number? num)(even? num))
        num
        0
        )
    ))

(define sumOfEvens 
  (lambda (L)  ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     L = ") (display L) (newline)
    (newline) 
    
    (if (not (= (length L) 1))  ; Choose between base case(s) vs. recursive cases [2a]
        
        ; solution for recursive cases [1b]
        (+  (sumOfEvens (cdr L))
            (amountToAdd (car L))
            )  ; end of "solution for recursive cases"
        
        ; solution for base case [2b]
        (amountToAdd (car L))
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

(sumOfEvens '(2 4));6
(sumOfEvens '(1 2 5 6));8
(sumOfEvens '(3 5 7));0

(display "-----------------") (newline) (newline)


(display "#4 reverseOfList") (newline)

(define (reverseOfList x)
  (cond
    ((= (length x) 1) x)
    (else (append (reverseOfList (cdr x)) (list (car x))))))

(reverseOfList '(1));(1)
(reverseOfList '(1 4));(4 1)
(reverseOfList '(1 2 6 4 5));(5 4 6 2 1)


(display "-----------------") (newline) (newline)