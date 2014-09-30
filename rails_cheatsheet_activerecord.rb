:Active :Record

1. Active Relations

* Active Relations Are Array Like Objects Created By Methods :group, :having, :join, :select, :where. 

* Relations Are Not Fetched Until They Are Need, In Other Words They Are Lazy Loaded. #No query fired until absolutely needed. 

2. Query Caching And Laziness

* Query Results Are Cached So Once They Are Gotten They Are Stored In Memory And Can Be Reused With Hitting Database Multiple Times. #Can be reloaded by either calling the reload method or call the same method with true as an argument.

* Because Queries Are Not Fired Until Needed, We Can :Chain :Methods And Have Them Not Evaluation Until All Chainned Methods Are Added. #This can only be done via laziness. where_values, include_values, join_values help you inspect filters. Override this by the .load method, and use .to_a to actually return an array. count does the same. 

3. Active Record Queries

* N + 1 Problem Occrus When Iterations Are Done Via Iterations Of Ruby Object Hence Firing One Query Per Object Instead Of Running A Single SQL Statemt. 

* Instead Use :Include To Include Everything At Once And Make Subsequent Calls To The Include Association Instead. #Includes Fetch Additional Data But Still Returns Initial Object As Result.

* This Method Of :Eager :Loading (Fetching More Data Than What Is Initially Needed) Can Be Used To Load Different Kinds Of Objects (Even :Nested Includes!) #ie. includes (:color, :shape)

* :Join(:association_name) Is Used To Filter Out Data Which Do Not Have Associated Records. :Inner :Join Is Default Behavior. #Ie. Power_rangers.joins(:weapons).uniq gives you only rangers with weapons. 

* :Joins Also Allow You To Joins Tables In SQL And Use Database Methods Such As Count() Via The :Select Method (Count Aliases Will Be Accessible As New Object Methods VERY COOL) :Group() Method Is Also Helpful To Group The Sql Data. #Use LEFT OUTER JOIN table_name ON id = id if you want to use outer joins, but association shortcut is lost. 

* :Where(sql_code_here) Are Still Available To Us When Joining, Just Need To Write Out Full Table Names. 

* :Scope Is A Common Used Method That Returns A Relation, Can Be Chainned Into Other Methods Via ActiveRecord Magic. #ActiveRecords copies individual object methods into a relation of that object, very cool. 

4. Query Advanced

* You Can Use Dynamic Finders In The Form Of :find_by_attribute ("attribute_value") To Find The First Record Easily. #Even find_by_x_and_y for more than one attributes. 

* The :order("sql order strings") To Order Results. 

* Likewise, The :group(), And :having() Clauses Can Be Used To Add Additional Filtering To Queries. 

* Aggregation Methods Can Like Wise Be Use In The Relation.function_name() Format. 

* It Is Always Okay To Grop To :find_by_sql(<<-SQL)
SQL
To Drop To Lower Level And Work On More Complex Queries. This Is Often Easier. #Need to pass all params along with sql string as an array to interpolate properly.  





 



















