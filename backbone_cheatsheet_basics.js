:BackBone :Basics

1. Models

* Models In BackBone Are All Extensions Of The Backbone.Model Object ( The Extend Function Simly Merge In The First Object Passed In As An Argument With The This Object ). 

* Models Should Contain An :initialize Property That Will Be Run When A New Object Is Created And A :defaults Property Which Will Be An Object That Contain New Instances Default Properties. 

* Models :set() Method Takes An Object With Property -> Value Pairs And Sets Them While :get() Takes String Of Property Name And Gives Value Back. 

* The Backbone Models :on() Method Takes An Event Name And Calls The Callback Fucntion Very Similar To JQuerys On. (Except The Strings Are Not DOM Defaults)



2. Events

* Backbone Comes With A Load Of Events, Of Course They Can Be Customized As Well, They Can Be On Model, Collection And Views, And Are Fired As They Occur, Such As Collection.sort When A Collection Gets Sorteded. The Eventlisteners Callback (The Collection.on("sort", callback)) Then Gets Fired. 

