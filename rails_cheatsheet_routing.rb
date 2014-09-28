:Rails :Server :And :Routing

1. Resouce Routing

* Router Takes 2 Arguments, The HTTP Protocal (:GET, :POST, :CREATE, :PATCH, :DELETE) And A Path String (/all/the/best_posts/) And Figures Out What Controller Should Be Called. 

* Rails :resource/:resources Keyword Will Automatically Map Basic HTTP Requestions To Rail Model Controllers. # Index for all (or no id param), New for new, create for POST data, Show For get with ID, edit for id/edit, update for PATCH/PUT with ID, and Destroy for DELETE 

* The :id Section Of Rails Router Is The Dynamic Segment That Matches Any String Not Containing /. # All that the router does is to match correct requests to the correct method, there should be no business logic

* The root to: Command Sets Default Page Of Your Site, Also Very Useful. 

* Often Times Certain Resources Are Children Of Others, In Those Cases They Should Be Nested In Order To Model The Relationship. # Can even specify which controller methods are available in the nest. Otherwise all routes will be generated. 

* In Order To Have Clean Design, Every Single Representation Of A Resource Should Be Mapped To Only One URL. # For example theres no point in including the parent id if children can and should be found by their own ids.


2. Controllers

* Controller Names Should Be Plural, Just As Resources Name Should Be Plural. 

* When Resources Routes Are Created In Rail, Routing Helpers Methods Are Also Created. These Include :objects_url (Index Url), :new_object_url (New Url), :object_url (@object) (Specific ID URL), And :edit_object_url (@object) (Object IDs Edit Page) #These are useful and should always be used.

* Lots Of Rails Methods Take An Optional :method Parameter That Changes What The URL Does Greatly. 

* It Is Also Possible To Pass Additional Embed Query-String Objects To URL Helper Creations. #Also prefer the full url version over simply the path version

* The rake: routes: Command Show All Available Routes And What They Map To, Very Useful. 









