:Schema :And :Index

1. Schema File

* The db/schema.rb Is One Giant Migration That ActiveRecord Generates. Every Individual Migration Is Added. rake db:schema:load Is Much Faster Than Running All The Migrations Individually. #Also a great way to checkout db structure!

2. Index Columns

* We Can Eaily Add Index In Migration Files Via The :add_index :column_1_name (, :optional_column2_name). INDEX ALL THE THINGS!