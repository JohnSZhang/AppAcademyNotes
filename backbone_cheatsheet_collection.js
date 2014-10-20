:Backbone :Collection

1. Collection Basics

* Collections In Backbone Are Simply A Collection Of Sorted Models. They Usuallly Have An :initialize() Function Which Is Called When A New Model Is Created And A :model Property In Its Construction Object Argument Which Tells It What The Underlying Model Class It For Parse/Conversion Purposes. 

* Collections Are Also Created With A :url Property So Backbone Knows Where To Go For The Collection Data. 

* While One Can Call Collection.models To Get The Models Inside A Collection, Usually The :get(id)/ :at Methods Are Used Instead To Get A Specific Model. 

2. Working With Models

* Models Are Usually Not Loaded Right Away And A Call To :fetch() Is Needed To Get The Model Objects. #This too takes optional success / error callback functions. 

* The :create() Method Is Used To Create A New Instance Of Model And Add It To Collection. It Takes An Object With The New Objects Properties As Argument. 

* There Are 3 Types Of Comparators That Can Be Used To Keep Models In Order, Either sortBy(functionToSort) This One Returns String Or Number Values, sort(functionWithTwoArguments) This One Is Like <=>, attribute(attributeStringToSort)