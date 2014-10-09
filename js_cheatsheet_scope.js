:Js :Misc

1. Closure

* To Understand Javascript Closure We Need To Understand JS Scope, In Js, Scope (Ie The Variables That Any Location The Code Has Access To) Includes The Local Variables Defined In The Current Function, Any Arguments Passed In, And Any Other Variables That Were Declared When The Function Is Defined.

* These "Free Variables" Can Be :captured In Their References (They Will Not Be Garbage Collected If So) And We Call The Function Which Captures Free Variables A :Closure.

2. Global Scope

* Variables Not Defined Under A Specific Functional Scope Are Under The :global Scope (Either Global Object In Node Or Window In Browser). Do Not Use Gobal Variables And Always Define Variables #User strict mode to make sure undefined global variables throws an error. 'include strict';


