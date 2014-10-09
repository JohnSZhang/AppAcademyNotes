:js :inheritance

1. Object Creation

* Js Objects Are Created Via Constructor Functions Instead Of Class Definitions. To Define A Constructor, Use :this Inside Function Definition To Add Attributes/Class Methods To The Newly Created Object. #By convention, constructor function are CamelCased

* To Create An Object From Constructor, The :new Keyword Must Go Before Function Call. # New CreateAPuppy(name, adorableness_level)!

* Keyword :this Points To The Parent Object That Is Calling The Function In Question, If Function Is Called Without A Object Then The Global Object Is The Default :this

2. Inheritance

* All Javascript Objects Also Contain A Pointer To A :Prototype Object That Is Unique To The Constructor Function. #Maybe the new method looks up the constructor??

* Due To The Constructor Method Of Object Generation, There Is No "Class" Object That All Instance Inherit From. Instead, We Update The Object.prototype "Parent Object" To Add Additional Methods To All Objects. When The Regular Object Does Not Find A Method In Itself It Goes To The :Prototype Object Grab If Possible.

