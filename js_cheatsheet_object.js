:js :inheritance

1. Object Creation

* Objects In JS Are Really Just Hashes With Keys ("" Needed If Not Valid Variale Name) Of Properties And Values Of Either Primitives, Objects (Including Prototype), Or Funtions. Hence We Can Have {} (Object Literal Notation) As A Way Of Creating A Object Quickly. #These objects are always, always passed around via reference and never by value. 

* Object Property Names Are Literals Instead Of Variables, So They Must Be Known At Compile Time. 

* Js Objects Are Created Via Constructor Functions Instead Of Class Definitions. To Define A Constructor, Use :this Inside Function Definition To Add Attributes/Class Methods To The Newly Created Object. #By convention, constructor function are CamelCased

* To Create An Object From Constructor, The :new Keyword Must Go Before Function Call. # New CreateAPuppy(name, adorableness_level)!

* Keyword :this Points To The Parent Object That Is Calling The Function In Question, If Function Is Called Without A Object Then The Global Object Is The Default :this

* Keyword :delete Can Be Used To Delete A Property From An Object, It Will, However, Allo Prototypes Property Of An Identical Name To Shine Through. 

2. Inheritance

* All Javascript Objects Also Contain A Pointer To A :Prototype Object That Is Unique To The Constructor Function (Object Literals Have Object.prototype). This Chain Of Prototypes Runs Until It Hits Null #The new keyword creates this __proto__ keyword property for all objects. This __proto__ property points directly to the parent class object. ie. The ConsctructorName.prototype object. 

* Due To The Constructor Method Of Object Generation, There Is No "Class" Object That All Instance Inherit From (But We Can Think Of Class As A Combination Of Constructor Function And Its Prototype Object). Instead, We Update The Object.prototype "Parent Object" To Add Additional Methods To All Objects. We Can Also Use Object.getPrototypeOf(object) To Get An Instances Prototype Name. When The Regular Object Does Not Find A Method In Itself It Goes To The :__proto__ Object Grab If Possible.

* Because The None Standardized :__proto__ Property Of A Javascript Object Cannot Be Set Directly And Instead Only Via The new Keyword, The Only Way To Set Up Inheritance Structure Is To FIrst Define The Conscturctor Functions, Then Set The ConstructorName.prototype = new ParentConstructor(). #This sets the childObjects __proto__ setting to an instance of the Parent class, and the method search will go to the parent object. This is kind of hacky though, since a blank parent object is created before we even create any child objects, plus the parents constructor will never run when we are creating children objects.

* Sometimes One Would Like To To Check If An Object Has Some Property By Itself And Not As Part Of Prototype Chain, In These Cases Uses The Object.hasOwnProperty("") Method, Which Returns A Boolean.

* As A Note, One Should Be Aware Of All Parent Classes Properties When Using A Subclass, As Properties That Dupliates In Both Parent And Childclass Will Overwirte Each Other. Also A Good Idea To Not Inherit From Standard Classes As They Have Special Internal Behavior. Similarly, Do Not Rely On The Prototype Structures Of Objects Which You Do Not Own As Those Implementations Might Be Changed In Future (Including __proto__). Like Wise, Do Not Monkey Patch For No Good Reason And Without Good Reason. 

3. Surrogate And Initialization

* To Overcome The Hackiness That Is The Above Problem, We Create A Dummy Surrogate Constructor, Set The Surrogate.prototype To ParentClass.prototype, Then ChildClass.prototype = new Surrogate (). Additionally, In The ChildClass Constructor Function well Add A ParennConstructor.call(this, argumentsForParent) To Set Up Any Necessary Properties That Might Be Needed. #this trick can be refactored with Object.create keyword now, but this is not always supported. 


4. Working With Objects

* Objects Have A Useful :for() Method With Goes Through Every Element Of The Hash Via Their Key. When Using Objects As Hash/Dictionary, Simply Create A New {}. We Can Also Create A Object Without Any Prototype Via The ES5s Object.create(null)

* When Looping Through Properties And We Do Not Want To Access Parent Classes Properties, Use The :hasOwnProperty() Check. 

* Working With Objects, It Is Important To Remember The For...In Method For Looping Through Properties Can Take Any Order, Therefore, When Looping Through An Object And We Wish To Keep The Properties In Some Order We Should Use An Array Instead (Always Ordered).  Also Key To Remember That The For...In And Its Desedents Do Not Necessarily Take Into Account Newly Added/Deleted Properties, Just Dont Modify Anything While Enumerating. 





