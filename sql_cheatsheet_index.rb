:Index :And :Constraints

1. Index

* Index Are Special Database Tables Which Keeps Things In Order, But Only Keeps The Columns Used To Locate Rows In Table (And Their Corresponding Physical Location). #This is to speed up searching

* Index Creation Via :Upate :Table :Add :Index :On table_name (column_name)

* Can Also Create :Unique Index To Prevent Data Dupliation #Primar Keys Are Both Unique And Indexed. 

* Multicolumn Can Be Created But They Would Only Be Usedful When Searching By A Combination Of The Columns (Not Useful For Singles Since Not Sorted For That Purpose)

* B-Trees Are Good Due To Their LogN Speed. (Christmas Trees Even)

* Do Not INDEX ALL THE THINGS, Can Use Explain Key Keyword To See How Keys Are Generated. #More Index means slower update time, means more maintnance. Makes Everything harder.

2. Constraint

* Contraints Are Restrictions On Data. Types Of Constraints Include :Primary :Key, :Foreign :Key, :Unique, :Check. 

* Constraints Are Usually Created When Tables Are Created. Can Also Be Dropped Via :Drop :Foreign :Key

* When User Trying To Insert/ Change Row So That New Row Doesn Not Have A Foreign Key In Parent Table, Error Is Raised. 

* The :On :Update :Cascade Command Allows Your Updates To Propage Through All Parent Tables. Can Also Do :On :Delete :Cascade

 

