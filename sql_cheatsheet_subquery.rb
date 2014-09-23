:Subquery

1. What Is This Subquery Thingy?

* Subquery Is A Query Within Another Query. (The Parent Being The :Containing :Statement). The Memory Server Used Up To Generate The Subquery Is Released Once The Statement Finishes Generating (:Statement :Scope Is Destroyed)#Always use subqueries with ()s

* Depending On Datatype Of Subquery Return It Can Be Used As Different Things. One Value For Equation(Called :Scalar :Query), One Column For A Set And A Table For A Table. 

2. Noncorrelated Subquery

* Noncorrelated Subqueruies Are Ones That May Be Executed Alone And Does Not Dependent On The :Containing :Statement. 

* Multirow Single Column Result Subqueries Can Be Used With :In And :Not :In. #These Use The Subquery Result As A Set Of Row Values

* When You Want To Do Something With All Data Of A Particular Set The :All Operator Can Be Used. It Is Used To Filter Out Data With A Comparison To All Values In The Set Of Row Values. # ie. my_milkshake > All(select * other_milkshakes)

* When You Want TO See If Comparison To Any Single Value In A Returning Rows Of Values To Be True, Use The :Any Operator. 

* You Can Use A Comparison Of Multiple Values To Multiple Column Returns Of A Subquery Also. #Ie (firstname, lastname) IN (Select f, l FROM SECRETNAMES...)

3. Correlated Subquery

* Unlike Noncorrelated Subqueries, :Corredlated :Subqueries Must Be Executed Once Per Canidate Row (Because They Require Information From Containing Statement)

* The :Exists Operator Is Often Used To Test A Relationship But Do Not Care About Quantity Or Qualit Of It (Like Bad Relationships)

* Correlated Subqueries Are Oftened Used In Conjunction With Update / Delete Statements. #Side bar, delete statements do not allow for table aliases

4. Subqueries, What Are They Good For?

* Most Often, Subqueries Are Used As Temporary From Tables To Select From, But These Cannot Be Correlated As They Must Be Evaluated First So We Can Select Them! #Can use them to generate dummy variables, however.

* Subqueries Are Also Good For Filter Conditions (Even For The Having Clause). 

* Lastly (And This Is Actually Pretty Cool). Subqueries Can Be Used To Build Expressions One Value At A Time (Scalars Only) Useful For Almost Anything, Even Order Bys!



