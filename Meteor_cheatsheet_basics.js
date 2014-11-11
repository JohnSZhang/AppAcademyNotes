:Meteor :Basics

1. What Is Meteor?

* Meteor Is A Series Of Packages That Are Designed To Stand Alone And Work Together To Provide A Fully Integrated Experienced When Used As A Stack.

* The "Meteor Platform" Is Really A Series Of Tested Packages Tested To Work Well With Teach Other. You Can Still Use And Call Them Individually When Developing. The Current Stack As Of 1.0 Include :

- webapp: A HTTP Server That Listens To Requests And Serves Assets, Runs Asset Compilers, Use HTML5 Appcache So It Works Offline, And Allows For Custom Routes. Built On Top Of Node.

- blaze: A Library For Building A Live Update User Interface. Similar To Backbone And Angular, It Does The Backbone Listening For You. Can Take Multiple Templating Engines.

- tracker: The Library At The Core Of Meteors Reactive Templating, Listens For Changes And Update Template Created By Blaze.

- session:

- ddp: Stands For Distributed Data Protocal, A Protocal For Fetching Data From Server And Pushing Live Updates. Its REST For Websockets, Allows For Live Update Of Data As It Changes. (Think Of It As Rail Server)

- liveQuery: Connects Database To Your App, Any Changes Are Updated And Pushed To Server Live (Live Query). This Library Bridges The Gap FOr Databases That Doesnt Do This. It EIther Set Up Database Triggers Or Pretend To A Replicated Slave.

- fullStackDatabaseDriver: A :Latency :Compensated Reactive Full Stack Database Drivers That Steams Queries Against Databases, And Allows For User And Server Level Querying. Automatically Created CRUD Basics.

- miniDatabase: A Mini Database Implementation On The Client Server, Counterparty To :liveQuery. Can Do Both Traditional And Live Query Updates.

- mongo: The Current Best Supported DA For Full Stack Database Driver.

- isoBuild: A Automated Build Process, Create Tarbars For Server Side Process, Browser Based App In JS, IOS And Android Apps All At Once.

- spacebars: Based Off Handlebars ( The JS Templating Engine Using {{}}), But Configured To Work With Meteor And Its Reactive Updates.

- MeteorTool: A Version Management/Deployment Management/Package Management Tool For Your Meteor. Pulla In Other Libraries As Necessary.

- Accounts: A BoilderPlated System For User Login. Works With :oAuth Too. Can Add More Packages On Top Like :accounts-:password

- Utils: A Series Of Helper Methods For Things Like Http Library, Email Sending, Random Numbers, SHA, Geolocation.

- check: For Argument Checking And General Pattern Matching.

- underscore: Underscore Library

- jquery: jQuery Library

- ejson: Adds Binary And Binary Types To JSON. Deep Cloning And Deep Equality Test.

- Iron.Router: NOT A PART OF DEFAULT, A Router System That Does Both Client Side And Server Side Routing
2. Latency Compensation

* Meteor Wires Up Write Complete Notifications In DDP To Mini Database, Oce DDP Notifications Are Sent The Client Side Mini-Databases Backs Out Of Their Changes And Updates Correct Data.

* To Enable This, Add Meteor.Methods To Both Client And Server. On Server A Change Updates Live Server, On Client The Same Transaction Happens On MiniDatabase, Then Servers Allow/Deny Rules Apply, And Sents Result To Client, Result Then Cascade.
