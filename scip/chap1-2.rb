Chapter One - Two

1. Linear Recursion Example

* when solving problems, there are often two approaches, a :resursive solution vs an :iterative one. while they can sometimes have a smiliar number of growth rate and same operations, depending on the version one is using the process can be very different.

* with a :resursive process a chain of :deferred :operations are generated (see factorial example), this uses a large amount of memory in the intepreter as it has to keep track of the memory location of everything in the stack (or memory heap?). this number grows linearly with the input size and is called a :linear :recusive :process.

* with a :iterative process keeps track of the result of a previous process, with its state represented by a fixed number of :state :variables with rules on how it evolves from one step to the next. still, the number of steps grows linearly still, and is therefore called a :linear :iterative :process.

* while the process are different, we should not confuse it with :recursive vs :iterative procedures, both process invokes the method/function/procedure itself in the function declaration. it is really talking about the amount of data one needs to go from one step to the next and the speed of its growth.

* with most c family interpreters a recursive procedure consumes linear grow amount of memory (recursive process), and iterative process can only be descrives with for / while / until loops. scheme and certain other lisp family languages can do a iterative process without resorting to a recursive measure. this is called :tail-recursiveness, these special iterative constructs are not necessary.
