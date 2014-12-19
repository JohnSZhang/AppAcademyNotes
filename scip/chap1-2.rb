Chapter One - Two

1. Linear Recursion Example

* when solving problems, there are often two approaches, a :resursive solution vs an :iterative one. while they can sometimes have a smiliar number of growth rate and same operations, depending on the version one is using the process can be very different.

* with a :resursive process a chain of :deferred :operations are generated (see factorial example), this uses a large amount of memory in the intepreter as it has to keep track of the memory location of everything in the stack (or memory heap?). this number grows linearly with the input size and is called a :linear :recusive :process.

* with a :iterative process keeps track of the result of a previous process, with its state represented by a fixed number of :state :variables with rules on how it evolves from one step to the next. still, the number of steps grows linearly still, and is therefore called a :linear :iterative :process.

* while the process are different, we should not confuse it with :recursive vs :iterative procedures, both process invokes the method/function/procedure itself in the function declaration. it is really talking about the amount of data one needs to go from one step to the next and the speed of its growth.

* with most c family interpreters a recursive procedure consumes linear grow amount of memory (recursive process), and iterative process can only be descrives with for / while / until loops. scheme and certain other lisp family languages can do a iterative process without resorting to a recursive measure. this is called :tail-recursiveness, these special iterative constructs are not necessary.

2. Tree Recursion

* tree recursion is the idea of a single functin recursively call others in a tree like manner, ie the fibonacci type of recursion where one level need both (fib (- n 1)) and (fib (- n 2)). in general, the number of steps required in a tree recursive process grows in proportional to the number of nodes in the tree while the space will be proportional to the maxium depth of the tree

* this is a very slow and memory intensive process, and even at small numbers the difference between a tree recursion vs an iterative recurive process is massive.

* the classic coin change problem can be thought of as a powerful example of the recursive problem at work. we can think of the problem as taking the first kind of coin and go down all possible coin types until we get exact change, or if the amount is less than 0 we do not count it as a way to make change. this is not a very efficient procude yet is very easy to think about and write the code for.

3. Order Of Growth

* :order :of :growth is the name for this analysis for which a process consumes resource as its input changes. for a number n, ket R(n) be the amount of resources it needs to process such an n size input. for example, the iterative recursive process takes theta of n for step growth and n for memory growth while the tree recursive fibonacci computation grows at theta of golden ratio to the nth power and space of thetha of n. we also remove any constans as per big o notations.

4. Exponentiation

* we can recursively calculate the exponent of a number by

(define (expt b n)
  (if (= n 0)
    1
    (* b (expt b (- n 1)))))

which takes linear space and time or via an iterative process via

(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
    product
    (expt-iter b
      (- counter 1)
      (* b product))))

which takes a linear time but constant space. however, by breaking the number down into odd/even conponents we can create a faster exponnent via the below method

(define (fast-expt b n)
  (cond ((= n 0) 1)
    ((even? n) (square (fast-expt b (/ n 2))))
    (else (* b (fast-expt b (- n 1))))))

and result in a log(n) speed calculation. this becomes much much faster as the number of n grows.

5. Greatest Common Divisors

* using euclids algorithm, we can reduce the greatest common divisor of numbers a, and b by successively reducing the smaller number by the the remainder r of a and b until we are reduced to a pair where the second number is 0. the other number will be the greatest common divisor of a and b. this algorthim has a log growth with respect to a and b. lames theorem therefore states that if it requires k steps to compute the gcd via this method, then the smaller number must be greater than or equal to the kth fibonacci number.

6. Testing For Primality

* one way to test if a number if a prime number is by successively increasing divisors, from 2 to the square root of n, and if no number divides evenly then n is a prime number. this method grows with the sqrt of n.

* the fermat test of primarlity is based off fermats little theorem, that if n is a prime number and a is any positive integer less than n, then a raised to the nth power is congurent to a mod n. the probablistic method follows the therom takes n random numbers between 1 and n - 1, raise them to the nth power and calculate its mod v n and see if that is the same as a mod n. as we increase the numbers we test we are more and more sure that n is a prime number. the a to the nth power calculation can be done in log n steps, so this method grows approximately via log of n. this is a stype of probablistic test that can be repeated until a sufficiently secure probability is reached for us to be confident. 
