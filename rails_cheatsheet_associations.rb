:Rails :Associations

1. Belongs_to And Has_many

* Associations Tell ActiveRecords That Theres A Connection Between Two Models, Usually Using :foreign_key => :other_class_primary_key.

* The ActiveRecords::Associations::ClassMethods Contains :belong_to And :has_many Methods. They Are Available As Class Methods To ActiveRecords::Base Class. 

* In This Manner We Can Use :red_ranger.:weapon Method And :power_sword.:power_ranger Method As Long As They Are Linked. However, Primary Key And Foreign Keys Need To Be Setup Before Hand In Migration Files

* The class_name Attribute Is Used By The ClassMethods Module Which Table To Find, Which Class.new Method To Call #And of course to make sure to return the right type of object.

2. Belongs_to Vs Has_many

* :belongs_to Will Only Return A Single Object, And Should Be Useds When The Class You Are Defining It From Has A Foreign Key That Points To A Different Table. (Child Holds Key To Parent) # Note, name is singular

* :has_many Will Return All Children Rows That Has The Primary Key Of The Current Table As A Foreign Key. The Holder Of The Primary Key Is The One That Has Many. #Note, name is pluralized since an array is returned

* The Relations Definition Is has_many/belongs_to { :association_name, class_name: => "", :foreign_key => "", :primary_key => ""}

3. Has_many Through

* :has_many :through Associates Records Through Other Tables. Think Of It As Using A Join Table In Between. 

* has_many method_name, :through => self_association_name, :source => intermediary_associatin_name

* Remember, The Has Many Through Method Creates A New Compound Association Via Two Smaller Associations, And The Details Like Intermediary Foreign Keys Are Defined Already On Invidiual Association Level. # It is very smart and can combine individual has_many / belongs_to associations effectively. 

4. Has_one And Has_one Through

* :has_one Association Is A Has_many Where At Most One Associated Record Exist, Instead Of Returning Empty Array Will Return nil Or Object (But No Arrays).

* :has_one :through Is Like Has_many Through But Only Uses Belongs_to And Has_one (Wouldnt Make Sense Otherwise)

* :has_and_belongs_to_many Association Is Similar To A Has_many Through But Generates The Intermediate Table For You. Useful But Not When We Want Additional Information In Those Intermediate Tables. 









