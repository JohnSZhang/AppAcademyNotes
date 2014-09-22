:SQL :Joins

1. Join Basics

* Without An ID To Join On, A Join Simply Provides A Cartesian Product Of The Table Rows. This Is Also Known As A :CROSS :JOIN

* The :ON Clause Tells Tables How They Should Be Joined. 

* :INNER :JOIN Are The Most Common Type Of Join, It Leaves Out Data From Both Tables Where The Join Key Does Not Exist. #Inner joins are the default join type, but one should always practice good hyegine and spell it out.

* If Column Name Are The Same For Join Key On Both Tables, The Snytax :USING(join_key_name) Can Be Used.

2. Join More Than Two Tables

* Order Of Join Does Not Matter As SQL Is Not A Procedual Language. #Can be overriden but overwise the database probably knows best. 

* Subqueries In Joins Can Act Like Filters (Since Inner Joins Remove Rows That Do Not Contain The Join Key)

* Different Alias Keys Must Be Used If A Query Is To Use A Table More Than Once. 

3. Self Joins

* When Joining A Table Where The Foreign Key Is A Key In The Table Itself, Give Columns Alias To Make Things Easier # The tables themselves of course also need aliases since you are joining it with itself. 

4. Non-Equi-Joins

* Joins Can Be Joined On Ranges Instead Of Simple Equality. This Way You Can Figure Out How One Tables Rows Map On To Another Tables Rows.

* One Can Also Use Non-Equi-Joins TO Join Tables To Itself. For Example If One Employees Name <= Aother Employees Name.

5. Join Conditions And Filter Conditions

* Filter Conditions Can Go On Joins On Clause And Where Can Contain Filters On Clause Conditions, Very Flexible And Neat Trick!



