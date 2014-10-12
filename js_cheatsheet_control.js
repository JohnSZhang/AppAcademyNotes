:js :control

1. Expressions

* Unless Defined Inside A Function, All JS Variables Are Defined Under The Global Scope. When Inside A Function It Is A Private Variable. 

* Expressions Can Assign Value, Invoke Function, Or Delete A Property.  

2. Statement Blocks 

* Blocks Are Defined With {} Brackets Following C Family Tradition. However, There Is No Block Scope (ie Variables Inside Block Can Be Seen By And Have Acess To Outside Variables). 

* Addition To The Lack Of Block Level Scope, All Variables Declared Inside A Block Are :hoistered To The Top Level Of A Function Block And Set To Undefined. (Except For Variables That Are Passed In As Part Of Argument, Which Is Hoistered With The Value Passed In). This Often Causes Havoc, It Is Therefore Always A Good Idea To Declare ALL Variables Needed In A Block At The Very Top To Reduce Confusion. 

3. If Else If Else Statements. 

* The () After Keyword If Need Only To Be Truthy, And There Are Only 7 Falsy Things In JS : -0, 0, "", NaN, Null, Undefined, And False. ("False" Is True)

4. Special For

* The Special Form Of Our Overloaded For Function Iterate Through The Properties Of An Object (ie. for (key in objKeyChain)

5. Trying Harder

* The :try {} :catch (variableName) {} Syntax Is Used To Catch Exception Thrown By The Block Being Tried. Inside The Block Use :throw To Throw Exception. #Usually throws a new object literal with name and message properties. 

6. Return 

* Line End Between :return Keyword And The Expession That Is Returned Is Banned. 

