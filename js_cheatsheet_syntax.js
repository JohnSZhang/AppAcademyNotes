:js :syntax

1. Variables

* Variables Are Declared With :var Keyword Before Name Of Variable. # Name of variable after var must not start with number or with -. Their default scope is global, unless inside a function. 

2. Functions

* Function Can Be Anynomous In Javascipt And Simply Be Declared As function (argument) { block of code; } (This Is Called A Function Literal)

* There Are 5 Basic Ways To Call A Function In Javascript : 

- Function Style : ie. functionName() The Keyword :this Inside The Function Is The Global Object, One Can Think Of Functionaly Called Functions As Special Attribute Functions Of The Global Object. Function Name Here Can Also Be Used To Call The Function Itself Recursively. 

- Method Style : ie Object.function() The :this Inside Function Declaration Is The Object Calling It. 

- Constructor Style : ie new constructorFunction The Function Returns A New Object And :this Inside The Function Points To This New Object. Also Sets Protoptype Of The ClassName.Prototype Object. 

- With Apply : ie functionName.apply(object, [arguments]) It Is Almost Like Calling Function Objects .Bind:() Method While Calling It Regularly. 

- With Call : ie functionName.call(object, arg1, arg2, ...) Very Similar To Apply. It Is Often A Good Idea To First Implement A Apply Version Then Simply Wrap A Call Version Around It. 
 
* Functions Are First Class Objects In That They Are Objects And Have Hidden Properties (Linked To Function.prototype Then To Object.prototype). They Are Also Created With 2 Hidden Properties Which Are Its Context (For Closure) And The Actual Code To Implement Behavior. Every Function Also Has A :prototype Property Which Is An Object With A Constructor Property Whose Value Is The Function. (So Kind Of Like A Singleton Object.) For This Reason Functions Can Also Have Methods. 

* Because Js Functions Are First Class Objects, We Can Create Higher Order Functions, Ones Which Takes A Function As An Argument And/Or Returns Another Function. Like A Function Of Funtions. 

* Named Function Declaration ie. function Fun() {} Is Scoped Under The Current Local Scope, Similarly To Variable Declartion. (It Is Better, However, To Name It Something Else Inside The Functional Scope.) # It is also a much better practice to declare vars then assign them conditionally than to assign them conditionally willy nilly. 


3. Arguments 

* Javascript Functions Will Happily Take Both More And Less :arguments Than Their Definitions States. If More Functions Are Included They Will Be Available In A Special :arguments Array. If Less Arguments Are Included They Will Be :undefined. 

* Like The :this Keyword, :arguments Is Reset Whenever A New Functinal Scope Is Created. However, :arguments Is Not A True Array And Can Only Be Indexed/.Length On. #we can use [].slice.call(arguments) to make an array copy though. Also never modify this arguments array directly as terrible things can happen. 

4. Special Things To Note

* White Space Is Only Sometimes Needed To Differentiate Between Tokens, After Variable Names, After Keywords (new, var, etc.). Otherwise They Are Meaningless

* Reserved Words Include :
    "abstract
     boolean break byte
     case catch char class const continue
     debugger default delete do double
     else enum export extends
     false final finally float for function
     goto
     if implements import in instanceof int interface
     long
     native new null
     package private protected public
     return
     short static super switch synchronized
     this throw throws transient true try typeof
     var volatile void
     while with"
  
* Operator Order (Highest To Lowest) : 
    . [] ()
    delete new typeof + - !
    */ %
    +-
    >= <= > <
    === !==
    &&
    ||
    ?:
    Typeof Thinks Array And Nulls Are Objects. (Its Stupid)
    
* SemiColon Injection Can Happen : Before } Token, After \n Or At End Of Input. They Only Happen When The Next Line Cannot Be Parsed, So It Is Super Dangerous To Leave Them Out When Next Character Is ( , [ , + , - , or /  . Also Note Semicolons Are Not Automatically Injeted For Empty Loop Bodies Or In For Loop Head. 


