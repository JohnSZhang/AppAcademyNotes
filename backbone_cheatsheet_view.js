:Backbone :View

1. View Basics

* Similar To The Views Of Other MVC Frameworks, Backbone Views Are Used For Data Presentation As Well As For Event Listening. THe Main Templating Engine For Backbone Is The Understore.template While jQuery Is A Common DOM Manipulator. 

* Every Backbone View Comes With An :el Property, This Defaults To A Div Tag But Can Be Customized, Either By Passing Class/Tag Type Or Simply Passed In As Part Of The Initialization Functions Options Object (Under :el Property)

* Because We Are Using A Templating Engine, We Can Use The "<%" Tags To Render Js Content.  

2. Working With Views 

* We Use JST Templates In Our Backbone Views, Which Are The Templates :template Property. We Should Also Create A :render Property Which Holds Its Render Function. The Render Function Should Compile Template To Content, Inject Content To The Views El Element Via Append, Then Return :this. 

* Views Initialize Function Can Take An Option Object That Automatically Sets The Views Model And Collection To Options :model And :collection Property. This Is Also Useful For Setting Up Listeners. 

* Views Also Have A Default :events Hash, Which Uses JQuerys :on Function To Link Call Backs With DOM Event (Property Is Event Selector While Value Is The Name Of The Callback Function). 

3. Best Practices 

* Views Should Not Be Used To Redraw Entire Pages, Instead Only Whenever The Related View Data CHanges Should That Section Of The Site Be Rerendered. 