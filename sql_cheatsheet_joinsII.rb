:Joins :Revisited

1. Outer Join

* :Outer :Joins Are Joins Where The Number Of Resulting Rows Are Determined By The Option Given For The Join. For Example :Left Vs :Right Outer Joins Provides Number Of Rows From Tables Either To The Left Of Or Right Of The Join Operator.

* Outer Joins Fill In The Missing Data With Null Values #Another reason why nulls are so special. 

* Multiple Outer Joins Are Okay, Just Make Sure You Know What You Want Before Hand And Know Where The Nulls Will Come From. #Else Can alway get it from a subquery. 

* When Using Outer Joins On Self Joins, Make Sure You Think About Where The Missing Data Might Be (Depending On The Join Key)

2. Cross Join (Thanks Decarte)

* :Cross :Joins Provide Cartesian Product As Resulting Table, Most Useful For When You Are Actually Looking For Exponentially Growing Data. (Such As Digits Of Numbers). #Make Sure To Only Use It On Single Column Data though, else can grow out of hand fairly quickly. 

3. Natural Join

* Let Database Decide What Column To Join With Via :Natural :Join. Makes A Man Lazy And Sometimes Result In Cross Join When Identical Column Names Are Not Found.

