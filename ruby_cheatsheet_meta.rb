:Ruby :Metaprogramming

1. Send & Define_method

* Objects Can See Their Methods Via The :method Call. Methods Are Stored As Symbols And Can Be Called Manually Via The :send(method_name_in_symbols) Syntax. 

* Marcos Can Be Used To Generate New Instance Methods Via Calling :define_method Inside Method Itself. :define_singleton_method Defines Class Methods.

2. Method_missing

* :method_messing() Handles How Methods Not Defined Will Function, The Method Name Of The Method Will Be Passed In As The First Argument Of The *args Array.

* Similar To Method Missing, One Can Use :class_eval (string or <<- Block) To Add Additional Boilerplating Methods To Ruby. 

3. Type Introspection

* Use :class, :is_a?, :superclass, :kind_of? Methods To Find Out More About The Attribute Of Object You Wrok With. 

* Type Introspection Can Be Used In Order To Allow Different Argument Types To Be Passed Into Your Method And Have Them Behave Differently Depending On The Argument Type. 

4. Class Variables And Their Inhereitance 

* Inside Class Method Definitions @ Would Create Class Variables That Belong To The Class Singleton Object Instance. (These Are Instances Of The ClassName Singleton Object)

* When Inherenting From Parent Class That Contain Class Level Variables, A New Class Variable Will Be Created For The Subclass ANd Starts At Nil Unless You Use @@ (Which Is Shared Between Parent Class And All Subclasses.)

5. Global Variables

* $ Sign Denotes A Global Variable, These Are Permanent And Can Not Be Overriden. They Should Almost Never Used, Unless Its Globals Like $stdin And $stdout. #Other wise it's not OOP To use global variables. 

