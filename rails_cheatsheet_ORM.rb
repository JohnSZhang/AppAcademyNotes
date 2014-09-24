:Object :Relational :Mapping 

1. What Is ORM And Why Do We Need It?

* ORM Is Automatic Systems That Translates Between SQL Records And Programming Languages. It Hides Direct SQL Codes From Us So We Can Work With Models Directly. 

2. ActiveRecord::Base

* When Our Models Inhereit From Which Maps Out Relations For Us. #Stored in app/models/classname.rb by convention. Class and file name are singular while table names are plural.

* The Model::all And Model::find(id) Methods Are Class Methods That Are Super Useful.

* PowerRanger::where("color = ?" "red!") Uses Herodocs To Interpolate Where Clauses. #? marks are used to avoid injections (nobody likes the doctors)

* Can Even Use PowerRanger::where( :color => "blue!") Format. #Also See PowerRanger::Where(:color => ["Red", "Blue", "Yellow"]) And PowerRanger::Where(:age => (18..21)) Not recommended as DSL cost might be too great

* Column Names Are Automatically Generated Accessors, So We Can Simply Get/Set Them In Our Ruby Files. 

* The :red_ranger.:save! Method Is What Actually Saves Our Records. (.:save Also Exists But Will Not Warn You If Save Fails) The :create! Method Is Like Save But It Does Things Faster. 

* The :pink_ranger.:destroy Method Deletes The Row From Record (Anyone But Her!)

3. Rails Console

* rails console (or rails c) Allows You To Play Around In Your New Rails Application And Its Data. Inside Console Use :reload! To Reload Your Models. 

* rails dbconsole Is A Fast Way To Jump Into DB 

4. ORM Conventions

* Convention Over Configuration Saves Us Boilerplater!!(YAY O.O) 

* Class Name Should Be :Singular, While Table Names :Plural. Multiword Class Names Should Be :CamelCase While MultiWord Table Names Are :snake_cased

* Foreign Keys Should Be :singular_snake_case_id, While Primary Keys Should Be :id. Association Name Should Be :plural_snake_case For Has_many And :singular_snake_case For Belongs_to

* :Reflexive :Associations Where The Foreign Key Are In The Table Itself (Snake Eating Itself.). In These Cases We Need To Write Things Out. 








