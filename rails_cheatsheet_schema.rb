:Schema :And :Index

1. Schema File

* The db/schema.rb Is One Giant Migration That ActiveRecord Generates. Every Individual Migration Is Added. rake db:schema:load Is Much Faster Than Running All The Migrations Individually. #Also a great way to checkout db structure!

2. Index Columns

* We Can Eaily Add Index In Migration Files Via The :add_index :column_1_name (, :optional_column2_name). INDEX ALL THE THINGS!

3. Callbacks

* While We Can Define Foregin Key Constraints On Database Level, It Is Often Easier To Use Relational Call Back To Edit Widowed Records (Ones That Has A Foreign Key With No Valid Point, Btw This Name Is Kind Of Sexist, Cant They Be Rebelious Or Something? ) To Do This We Add :dependent => :destroy Or :dependent => :nullify To Either Destroy Or Set Key To Null.

* Other Cool Callback Methods Inculde :before_validation, :after_create, :after_destroy, Which Does Special Validating/Clean Up Before/After Record Creation And Deletion. #Methods should be protected/private and sometimes take additional arguments to only be triggered one creation instead of every validaiton. 

4. Action Mailer

* 