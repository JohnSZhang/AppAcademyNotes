:Js :Scope

1. Closure And Hoisting

* To Understand Javascript Closure We Need To Understand JS Scope, In Js, Scope (Ie The Variables That Any Location The Code Has Access To) Includes The Local Variables Defined In The Current Function, Any Arguments Passed In, And Any Other Variables That Were Declared When The Function Is Defined.

* These "Free Variables" Can Be :captured In Their References (They Will Not Be Garbage Collected If So) And We Call The Function Which Captures Free Variables A :Closure. The Only Varibles Not Captured By Closures Are :this And :arguments. # Because of this weird arguments behavior it is always good idea to assign it to a local variable first before working with it. 

* Because Theres No Block Scope, Variables Are Bind To The Nearest Function Scope Instead, And Variables Declared Inside A Functional Scope Are All :hoistered To The Top Of The Function Declaration And Set To Undefined (Unless They Are An Argument Passed Into The Function Or They Are Named Functions.) It Is Good Practice To Declare All Your Variables At Beginning Of Methods To Prevent Bugs From This Behavior. 

2. Global Scope

* Variables Not Defined Under A Specific Functional Scope Are Under The :global Scope (Either Global Object In Node Or Window In Browser). Do Not Use Gobal Variables And Always Define Variables #User strict mode to make sure global variables defined without keyword var throws an error. 'include strict'; Can use global to test for browser feature detection though. 

3. Binding

* Because JS Methods That Are Called Without An Object (Even If They Are Defined As An Attribute Of An Object) Will Run Under The :Global Scope And Under Global Object, One Need To :bind The Function To An Object With The Function Objects Special Bind() Method In Order To Set :this Inside The Function Properly. Binding A Function This Way Ceates A New Function, Not Modifying The Original. 

* It Is Also Possible To Use Bind A More Generic Version Of A Function To A Subset Of Its Arguments And Create A More Refined Version Of The Original Function, This Is Called :currying. If Curring Using Bind, Use Null Or Undefined As Receiving Object. 

* Because Keyword :this Is Never Captured By The Closure Of Inner Functions, It Is Often Good Practice To Create A Variable And Point It To The :this Object So They Can Be Used Later On In The Nested Function. This Variable Is Often Named :that. 

4. With Keyword

* Idealy, The With Keyword Changes Scope Of A Block To The Object Passed In As Argument So We Do Not Have To Type It Out Everytime. This Is A Bad Idea Though, Mostly Due To Our Lack Of Ability To Predict Variable Scopes In The Future And Can Cause Hard To Trackdown Bugs. Do Not Use With. Bind The With Object To A Short Variable Name Instead. 





