:DataBase :Basics

1. Schemas

* Schemas Are Descriptions Of How Database Data Are Organized. #You should already know what tables you need, what the coloumns of those tables and the data type of the data stored in them before creation

* Basic Database Datatypes Include Boolean, Int, Float, Varchar, Text, Date, Datetime, Time, And Blob. 

2. Keys To The Kingdom

* Primary Keys Are Unique IDs For Any Given Row Of Data #Useful because you want to differentiate rows with same data. Auto Increment makes sure they are never repeated. 

* Foreign Keys Are Used To Model Relationship Between Entities. #It's responsibility is to point to a different row in a different database. 

* By Convention, Foreign Keys Should Be Primary Key In Another Table. #To make sure only one exist in the other table. (Else things get confusing via many to many relationships. )

3. SQL (Nobody Knows What It Stands For Anymore)

* A Domain Specific Language To Query Data From Databases. Basic Syntax Being 'ACTION' 'FROM' TABLE 'WHERE' SOMETHING 'OR' ANOTHER.

* Main Actions Types Include : 

- Select: Retrives Value From Tables That Match Specific Criteria (Via Where)

- Insert: Into: Adds Data Into Tables Table Columns With "Values" (Of Blah)

- Update: Updates Table "Set" Some Column To Some Value "Where" Certain Condition Is Met

- Delete: From: Table Rows "Where" Data Meets Criteria

- Join: One Table On Another "On" Foreign Key To Acess More Data. 

4. Schema Edits

* Create Table, Alter Table, And Drop Table Are Used To Change Database Sctructure.

5. Format SQL Code

* Keywords Should Align Left, Body Is Then Indented Two Spaces. Where Clauses That Are Complicated Should Be Parenthesized. 

* Subqueries Shuld Be Parenthesized And Indented Two Extra Spaces To Create Nice Nested Structure. Joins On Statement Go Right After Join On Same Line. 

6. Rails Flavored Sql 

* Use Snake_Case Pluralized Table Names #This is how rails generate tables by default and is useful for us. 

* Use "id" For Table Primary Keys. 

* Use "foreign_table_name.id" As The Foregien Key Column On Your Tables. #Also makes rails life much easier.

* Use <<-SQL (This Can Be Any Phase) 
HERE ARE SOME COOL QUERIES
SQL
To Create A Multi-Line SQL Queries. 

* To Interpolate Ruby Data With SQL Query Do : db.execute(<<-SQL, data_to_interpolate)
Inserting Data ? 
SQL
The ? Allows For Inteerpolation Of Data 


