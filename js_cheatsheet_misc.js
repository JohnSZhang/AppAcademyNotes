:js :misc

1. Callbacks

* :Callbacks Are Functions Which Are Passed Into Another Function And Are Intended To Be Called Back At A Later Point. #Usually because the reults will not be available until later on in the pt. 

2. Asynchronous Functions

* :Callback Are Also Often Used In :Asynchronous Methods, Something That Javascript Supports Which Allows Multiple Functions To Be Running In THe Background And Only Run When Needed/Called. 

* A Great Way To Demonstrate The JS Asynchronous Functions Is Via Browsers EventListener Capabilities And Windows Set Interval Function. 

3. IIFE

* Immediately-Invoked Function Expression Is A Javascript Programming Pattern That Wraps All Code To Be Included In A Lexical Scope (Via Creating An Anynomous Function And Running It Immediately.) This Causes All Variables Declared Inside The Function To Be Truly Private And It Only Deals With Window.objects When It Absolutely Has To. # It is a good idea to start your codw with ;, then wrap everything in a parantheses and end with another ;. 

4. Modular Pattern 

* Similar TO IFFE, But It Doesnt Necessarily Invoke The Function Right Away. We Can For Example Create Constructor Methods That Hides Variables Via Functional Scope, Then Return A New Object Generated Inside The Constructor, These Functions Do Not Need A new Keyword To Be Created. First We Declare Shared Methods, Then The new Obejct That, Then Any Private Methods Of That. 

6. Use Strict. 

* Declare The Use Of Strick Javascript Via "use strict"; This Disallows Some Of The Worst Aspects Of NonStrict JS, Such As Override System Variables. This Does However, Require To Be Declare At Top Of Script So Always IFFE

7. Implicit Conversion

* + - / * Tries To Coerce Arguments Into Numbers Before Calculation. Except For + Which Also Works For Strings And Therefore Strings Takes Priority. 1 + "2" + 3 = "123"
