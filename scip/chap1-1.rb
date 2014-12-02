Chapter One Point One

* Elements Of Programing

- Primitives: the simpliest entities in the language

- Combination: ways to combine elements from simpler ones

- Abstraction: manipulating compound elements

1. Expressions

* when expressions are typed, interpreter evaluates it, expression can and will be evaluated

* basic primitive expressions in lisp include numbers, + -, text. these can be combined to form :combinations throught the use of :parens. the format is ( :operator followed by one or more :operands) ie. ( + 2 3 4). :combinations can be nested and have other :combinations as operands

2. Names And Varialbes

* variables are defined in lisp with the :define keyword (def: in Clojure:) where the first argument is name of variable and second is the expresion. :global :environment is where these association of name value pairs are stored in memory.

3. Combination Evaluation

* combinations in lisp are evaluated recursively, such that the subexpressions are evaluated before the resulting value is passed to parent operator as operands

4. Compound Procedures (ie, functions)

* procedures are formed in the format of (def (name, arguments) (function body)) in Clojure: these are defined by (def function_name (fn [args] (function body)))

5. Applicative Vs Normal Order Evaluation

* in applicative order, we evaluate the body with each parametser replaced with its corresponding argument, replace witht their formal definition, evaluate them, then combine (this method evaluates all parts of an expression everytime). with normal order evaluation, we only go and look for the value of an operand when it is absolutely needed, skipping the unnecessary parts entirly.

6. Conditional Expressions

* a conditional analysis can be created in lisp using the :cond keyword, where each operand of the expression is called a :clause and is in the format of (:predicate expression). the condit operator ten goes own the down evaluating each predicate and if they are true, return the value fo the expression after the predicate. the :else keyword can be used to subsitute all other conditions and form a basic if/else condition. in Clojure: one does not wrap the predicate and expression in parans, instead we list them out as operands one after another, and therefore an even number of operands must be listed. and the else must be used as a symbol, ie :else

* a special :if :else syntax is the :if keyword in the format of (if :predicate :consequent :alternative)

* other basic control flow methods include the < , > , = and the :and , :or, :not keywords. :and and :or can take any number of operands, and follows logic of and/or otherwise

7. Newtons Method

* Newtons method is a clear example of using a recursive solution to solve a other wise iterative problem. the good_enough? function is presented as our base case, and the sqrt_iter method is the recursive engine that drives the solution

8. Procedures As Black Box

* the beauty of the square root problem is how it is broken into smaller subproblems. this breaking down of a problem allows us to treat each function/procedure as a :black :box, aka so we can disregard its inner workings. this is called procedure abstraction, similar to the idea of a single principle rule for classes in that there should only be one purpose for a class.

* furthermore, each procedure must have its variables value to be :local within that function, so we can reuse variable names and swap them out in the future. the procedures :formal :parameter is the variable that it takes and does not matter what the actualy name is, and it will have the body of the procedure as its :scope. such a variable is called a :bound :variable, it doesnt matter what its name actually is. and the set of expressions where the variable name is :bound to the value is called the variables :scope.

* if we name a :formal :parameter to be the same name as a :free variable to be used at a later time, (calling a variable abs when abs is later used as a function), then we have :captured the varible abs and the function will no longer work.

* variable is within :scope anytime inside a procedure declaration (also called a :block :structure), so we can often skip that variable as an input to sub procedures. this is called :lexical :scoping, ie the same variable name has the same value throughout the entire block. 
