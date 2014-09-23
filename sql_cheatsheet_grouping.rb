:SQL :Grouping

1. Group By All The Groups!

* Group By Is Our Main Tool For Aggregating Data/ Doing Basic Data Analysis Via The Database. 

* Simply :Group :By A Column To Select Distinct Values. It Returns One Row Per Group Specified By Group By 

* Since Group By Gives Us Aggregate Of Data, We Cannot Simply Use Where But Need To Use :Having Instead For Aggreate Data Such As Count. # Where can still be used in somecases, but need to go before the group by operator.

*  WHAT KIND OF DATATYPE???

2. Aggregate Functions

* Aggregate Functions Are Ones That Process Data, Used In Conjunction With Group Bys. Common Ones Include Max(), Min(), Avg(), Sum(), And Count(). # What they actually do are pretty self explainatory.

* When No Explicit Group By Method Is Given, Implicit Group By Uses All Rows Of Data. # Remember, group by tells you to return one row per unique value of the group by column. So if you want to split data into more than one row you must use explicit group by

* :Distinct Works Similar TO Group By, It Uses Unique Values In Column For The Aggregate Function Instead Of Mulitiple Copies. 

* Beware Of :Null Values, Count(*) May Count All Values Including Null But Count(Names) Will Only Count Ones IS NOT NULL

3. Group Generation 

* Unlike Single Colum Grouping That Groups By Just One Set Of Variables, Multicolumn Grouping Gives You The Same Number Of Rows As The Product Of The Number Of Unique Columns Values Given. # I.e Grouping by 3 types of primary colors and 8 types of shades would give you 24 rows of data. 

* :Group :By Need Not To Be Limited By Column Values, They Can Also Be Generated On The Fly Via Expressions. # Group By Left(1) OF Social Security For Example.

* :With :Rollup Adds Subtotals For The Column With Rollup For And Set Those Value To Null. Its Like A Two For One Deal. #With Cube does it one better and also adds the reverse for the other column with null values as standins. 






 


