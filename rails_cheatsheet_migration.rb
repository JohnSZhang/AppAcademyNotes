:Activerecord :Migration

1. Basics

* Data Migrations Are Files Containing Ruby Code Which Describe Sets Of Changes To Apply To Databaes. # Create, drop tables, alter colmns, etc. 

* All Your Migration Files While Be A Subclass Of ActiveRecord::Migration Class
And Each Will Have A :Up And A :Down Method For Upgrading/Downgrading A Specific Migration #So They Can Be Rolled Back

* Migration Method Include create_table, drop_table, Etc. 

* Sometimes, You Do Not Need To Write A Down Method As Adding A Column Should Imply The Opposite Is Delete. In Those Cases :Change Method Will Help You Do Both. #It knows what to do to reverse the changes automatically. But does not work for migrations that remove columns (why not? Why cant it be smart like that)

2. Table Creation

* :create_table Creates Tables As The Name Suggests. Table Name Should Be :symbol_of_snake_case_plural_form Of Class Name. 

* Activerecords Automatically Adds Some Columns To Tables, Including :id (automatic primary key), (Sometimes But Not Always):created_at And :updated_at Columns. 

* "Sexy" (This Is Actually Pretty Sexy...) Migration Methods Creates Columns With The Format t.data_type :column_name {:option => :option_value}

* Supported Sexy Column Types Include :boolean, :date, :datetime, :float, :integer, :string, :text, :time

* Keys Can Be Added Using The :foreign_key And :primary_key Options

3. Changing Tables (For Lunch!)

* :add_column, :remove_column, :rename_column Are Common Table Update Methods. They Follow The Syntax Of :action_name :table_name, :relevant_column_name, :other_params

* Other Common Table Related Methods Include :rename_table, :add_index, And :change_column (Change Column Changes Datatype Or Update Default/Null Options)

* Most Change Methods Can Be Auto Reversed, Except For :remove_column And :change_column As It Has No Idea What The Old Columns Are Like

3. Generating And Running Migrations 

* To Create A Migration Use 'rails generate migration' CamelCaseName Which Will Create A Scafolding Of The Migration #You can find it in the db/migration directory of the project. Note also the timestamp_snake_case_file_name format

* rake db::migrate Is Used To Actually Run Migrations Written. All The Past Migrations Are Stored In schema_migrations Table So Only New Migrations Will Be Ran. 

* rake db::rollback Rolls Back Your Last Migration And Erases Timestamp From schema_migrations So It Can Be Run Again.

* :Never :Edit :A :Migration That Has Been Pushed If You Dont Want To Lose Data Or Enrage Other Developers. 

* We Can Also Just Add Code In Migration Files, This Is A Easy Way To See Data For Database Changes. 


