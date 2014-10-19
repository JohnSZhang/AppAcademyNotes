:Backbone :Router

1. Router Basics 

* The Backbone Is Not A "true" Router The Way We Think Of Rails Routers, Instead It Catches Changes To The URL Bar That Looks Similar To "#/action" And Renders The Proper Sites. Each Router Object Contains A :routes Object With Url String And The Name Of Function It Should Call When Url Changes To Match It. (This Can Also Be Done Via A On Function That Listens To The Route Being Fired. )

* Similar To Rails, The Routers Routes Url String Can Take Wildcard ":id" Variables And Feed The Into The Function Handling The Matching Route. While The ":" Components Only Match Things Between Two Slahes, The "*" Operator Can Match Any Length Of Urls Segment. 

2. Working With Routers

* Backbone.history.start() Should Be Called Upon App Initialization To Ensure The Router Is Created/Initialized. The Routers Properties Can Each Be A Function That Matches The Event String Called When The Matching Routes Url Is Called. 

