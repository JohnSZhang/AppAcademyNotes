:Backbone :Events

1. Event Basics

* Backbone Comes With A Load Of Events, Of Course They Can Be Customized As Well, They Can Be On Model, Collection And Views, And Are Fired As They Occur, Such As Collection.sort When A Collection Gets Sorteded. The Eventlisteners Callback (The Collection.on("sort", callback)) Then Gets Fired. 

* A Better Way Than .on Is To Use The Backbone :listenTo() Function, Which Takes A Object To Put The Listener On, The Name Of The Listener, And The Callback Function For The Event. (ListenTo Unbind The Elements And Cause The View To Be Garbage Collected)

* Some Comment Events Include Add, Remove, Sync (With Server), Route, Request, Change. They Usually Also Take A Model/Collection, As Well As Options



