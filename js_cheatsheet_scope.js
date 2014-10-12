:Js :Scope

1. Closure

* To Understand Javascript Closure We Need To Understand JS Scope, In Js, Scope (Ie The Variables That Any Location The Code Has Access To) Includes The Local Variables Defined In The Current Function, Any Arguments Passed In, And Any Other Variables That Were Declared When The Function Is Defined.

* These "Free Variables" Can Be :captured In Their References (They Will Not Be Garbage Collected If So) And We Call The Function Which Captures Free Variables A :Closure. The Only Varibles Not Captured By Closures Are :this And :arguments.

2. Global Scope

* Variables Not Defined Under A Specific Functional Scope Are Under The :global Scope (Either Global Object In Node Or Window In Browser). Do Not Use Gobal Variables And Always Define Variables #User strict mode to make sure undefined global variables throws an error. 'include strict';

3. Binding

* Because JS Methods That Are Called Without An Object (Even If They Are Defined As An Attribute Of An Object) Will Run Under The :Global Scope And Under Global Object, One Need To :bind The Function To An Object With The Function Objects Special Bind() Method In Order To Set :this Inside The Function Properly. 

* Because Keyword :this Is Never Captured By The Closure Of Inner Functions, It Is Often Good Practice To Create A Variable And Point It To The :this Object So They Can Be Used Later On In The Nested Function. This Variable Is Often Named :that. 



