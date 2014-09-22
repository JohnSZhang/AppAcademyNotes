:SQL :Filter

1. Condition Evaluation

* Conditions Are Separated By :AND And :OR In Order To Only Include What Is Needed. 

* The :NOT Operator Is Used To Flip A Boolean. #But they can be confusing, which is why ruby has so many until, unless sugars

2. Conditions

* Popular Compare Operators Include =, !=, <, >, <>, :LIKE, :IN, And :BETWEEN

* Arithmetic Operators +, -, *, And / Also Works.

* Most Basic Form Is The = For Equality And != Or <> For Inequality. 

* Range Selection Can Use The Operators <, >, <=, >=, And :BETWEEN #Between "A Rock" And "A Hard Place" Always do lower limit then upper limit

* The Between Operator Is Inclusive, Which Can Make Things Tricky. #Another perk of range operator is that it works for strings. 

* The :IN Operator Is Useful For Skipping All The Ors #where John.location is in.('cafe', 'class', 'bed', 'somewhere interesting I cannot think of right now')

* Using Subqueries For :IN Operator Is A Powerful Way To Select Via Relationship. :Not :IN Is Also Handy.

* :LIKE Operator Can Take Custom SQL Based Matchers Or Regex Expressions

3. :NULL Is The Loneliest Number (That Also Is Not A Number)

* :NULL Is The Lack Of A Value, Not A Value Itself #Not to be confused with say 0, or false. It can be generated when its not applicable, when the value is not known or if it's undefined. Things can be null but cannot equal to null.

* :IS :NULL Is The Special Operator We Use To Test For Null Values. :IS :NOT :NULL Also Comes Handy.





