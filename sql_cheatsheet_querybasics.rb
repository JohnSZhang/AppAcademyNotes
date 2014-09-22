:Query :Basics

1. The Connection

* Connections Are Created When Username And Password Are Provided, Each Gets An Id And Lasts Until You Hit Quit Or The Server Resets. 

2. The Clauses

* Serveral Parts Make Up A Sql Query : 

- The :Select Tells Which Columns To Include In Result

- The :From Tells Which Tables To Draw Data From

- The :Where Filters Results Selected

- The :Group :By Groups Rows Together And Changes Nature Of Result

- The :Having Filters Out Unwanted Groups

- The :Order :By Sorts The Resulting Sets By Columns

3. The SELECT

* The :SELECT Gets Executed Last #Because we will want to filter data out before we get them, else what are we selecting?

* :SELECT Can Take May Forms, Not Just Column Names #Such as column * -1, round(), "strings", or even custom function calls

* Column Alias Change Name Of What You Are Selecting #SELECT EMPLOYEE_TYPE as DRONE 

* The :DISTINCT Keyword Selects Only Unique Results #Slow though, since they have to be sorted.

4. FROM And No To

* :FROM Not Only Tells Database What Tables To Use But Also How They Are Related. 

* Not Only Permanent Data #Views, Subqueries, are also included. So It's actually more powerful. 

* Subqueries Are Temporary Tables Created For Just The Select. #Think of it as a nested select query inside another.

* :Views Are Stored Procedure Select Statements #Kind of like a variable name on select statements to be used in other sessions.

* You :JOIN Tables In From Clause Via Table Name, Join Type, And Link (On)

* Table :Aliases Are Ways To Create Mini Table Variable Names To Be Used Later In The Query. (As Makes Things Easier To Read!)

5. WHERE Is My Filter?

* :WHERE Needs Filter Conditions To Work. Conditions Can Be Linked Via And, Ors

* Parentheses Should Be Used To Group Conditions With Mulitple And/Ors.

6. GROUP BY The Right Kind Of Data

* :GROUP :BY Clause Uses Predefined Sql Methods To Manipulate Data Before They Are Returned. Such As Sum(), Count(), Etc.

* The :HAVING Sorts Out Group Bys Similar To Wheres For Selects.

7. ORDER BY The Right Order

* :ORDER :BY Allows You To Sorting Your Results By Either Column Data Or Expression Based On Column Data #. Ie. order your cloth by their price if you want the cheap stuff to go to good will. Can use column number as shortcut for column name. 

* Default Is The Order Of Data In Database If No Order By, Otherwise ASC

* ORDER BY :DESC And :ASC Are Most Useful, Use :LIMIT To Limit Results.

* Other Sort By Expressions Are Available, Such As Right(), Left(). 



























