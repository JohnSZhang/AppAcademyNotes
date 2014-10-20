:BackBone :Models

1. Model Basics

* Models In BackBone Are All Extensions Of The Backbone.Model Object ( The Extend Function Simly Merge In The First Object Passed In As An Argument With The This Object ). #Like all other backbone components, use the Backbone.Model.Extend({Your Code Here}) To Create Your Own Class

* Models Should Contain An :initialize Property That Will Be Run When A New Object Is Created And A :defaults Property Which Will Be An Object That Contain New Instances Default Properties. #This initialize function often take an object of properties to set initially. 

2. Using Models

* Models :set() Method Takes An Object With Property -> Value Pairs And Sets Them While :get() Takes String Of Property Name And Gives Value Back. #All data ultimately are stored in the models attributes property, and getter and setters are just there to provide abstraction. 

* The Backbone Models :on() Method Takes An Event Name And Calls The Callback Fucntion Very Similar To JQuerys On. (Except The Strings Are Not DOM Defaults)

* Backbone Models Follow The RESTful Protocal. Use The :id Attribute To Identify Entities. (Set The :urlRoot Property To Let It Know Where To Go). New Objects Will Be Created When :id Is Missing And :save() Is Called Via The POST Request, Else A Put Request Is Sent. 

* :fetch() Is Used To Get A Model From Database (If We Already Have An Id Property), We Can Pass An Options Object To Fetch With A Success Callback Function. To Delete The Same Mode, Use The :destroy() Method. 

* :parse() Is Called On Models And Collections When They Are Returned From The Server So It Sanitizes Server Data, Turning Raw Responses Into Attribute Hashes. We Can Override It To Turn An Array Of JSON Objects Into A Collection/Array Of Model Objects That We Want To Work With. Passing { parse: true } Into The :set() Method Of A Child Will Use Its Parse Method Instead. 

* :toJSON() Function That Is Called When Data Gets Sent To The Server, It Formats Params Goingout To The Server In A Shallow Attribute Copy. 

* :validate() Function Is Called When A Model Is About To Be Saved, But It Be Set Manually Via Option {validate: true}, If Theres An Error "invalid" Event Is Fired And Model Will Not Be Saved (Itll Be In validationError State)


3. Model Propertyies

* All Models On Clients Backbone Service Has A :cid Property To Uniquely Identity Them (Like A pid). This Is Different From Regular :id Which Would Be Rail Based. 

* The Models :save() Method Makes Ajax Request (Will Do The Correct One Depending On What The Status Of The Object Is), It Takes Key/Value Arguments, Or An Object With Key Value Pairs To Save, And Options Which Can Contain Success/Failure Callback Functions. #The callbacks get model, response, options arguments passed, respectively. 


4. Best Practices

* Use Model.toJSON() For A Copy Of A Model, While Using A Models :attribute To Get Its Actual Attributes (Dont Do This). It Can Also Be A Good Idea To Add Model Level Validations To Backbone Models Before Saving To Database. 

* Use :escape() (An Underscore Property) To Escape Model Properties While Rendering As That Keeps Things Safe


