:Objects

1. Ruby Objects
# Everything is an object! Everyone inherets from Objects "primitive" class. 

# Need to override the == function of your own functions, also a good idea to override to_s function of objects to better represent the objects. (It is possible to override most ruby methods). Usualy use == to check if value is the same, eq? if type and value are the same. ie 25.0 not eq? 25

# Objects are only equal if they point to the same location in memory. Not all objects are equal just because their values are the same. 

# Why use objects when you can use hash to present the same data? Use a Hash when you want to collect variables that go together. And Object if you want access to methods

2. Creating Classes

* When Calling Class.new, The Class.initialize Function Is Called And Any Arguments Passed To New Is Passed To Initialize #Do not do too much with initialize, just use it to setup the bare basics of object

#What is the right level of granularity? When to create people and when to use communities? Use The level where you want to make individual changes at. Ie if you want to change a person's hair color, dont model them under a community. 125 lines is also about a maximum amount to look at. 

3. Inheritances

* Inheritance Is A Way To Create Subclasses In Order To Reuse Code. 

* trust_fund_kid < rich_grandparents Inheritence Uses The < Operator. # The Terms child class/subclass and parent class/superclass are interchangeable

* trust_fund_kid {def spending_habits} Overrides The Grandparents Frugal Ways

* super('Human') Is Keyword In Method Definition That Allows Child To Call Parent Class Method Implimentation, If No Arugment Is Called The New Methods Arguments Are Passed On. 

#When to use subclasses? Usually when you have two subclasses that are substantially different from each other behaviorly. Use it to keep DRY. 

4. To Checkout An Object
p nil # nil p uses the #inspect function and returns the
      # "inner-working" of objects

puts nil # "" puts uses the to_string function and returns just what you want people to see

5. Object Instances

* Instance.method Are Called With . Followed By Name Of Method

* Instance Variables Are Accessed With @variable_name Inside Of Instance #Are only accessible inside the object itself, to update it definte getter/setters (def name, def name=(name))

* Use attr_accessor :variable_name To Create Both Getter And Setters, attr_reader :variable_name To Create Readers Only

* Instance Methods Are Defined On Class Level But Called Upon Instances Of The Class And Acts Upon Instances

* Factory Methods Are Methods That Create New Objects (Similar To New) # To differentiate between class and instance methods, we use Class.instance_method and Class::class_method

* Use self. To Call Methods That Current Instance Has, Or Drop It And Ruby Will Parse Normally #Does not apply to setters

* Use def self.class_method To Define Class Methods # Similiarly use self.class_method_name to call one class method inside another


6. Useful Object Methods

"".nil? # False An empty string is still a string, only nil can be truly nil

[].class # Array Array.new()'s class being Array is not a surprise

{}.is_a?(Hash) # A hash is a hash(bown)?

"a string is a string" == "a string is a string" # A string is a string

4 <=> 5 # -1 Spaceships are intelligent and orders things for you

7. Privacy Of Methods

* Public # Methods that can be called by anyone who wish to, is deafult

* Private # Cannot be called with an explicit receiver (Not Even Self), but can be used by the class which contains it because implicit receiver is called. Accessible to subclasses

* Protected # Can be called by explicit receiver, as long as explicit receiver is of same class or is a subclass

# The use of public/private/protected is to better represent your code and logically tell reader which methods are used outside of class (Ie how the interface of the class look like). Keep class interaction with outside world as minimal as possible. 