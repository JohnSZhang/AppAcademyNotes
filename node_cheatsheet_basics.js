:NodeJs
1. What Is It?

* Node JS Is A Command Line Tool That Can Create WebServers Running On Javascript Codes.

* Basic Syntax For Creating A HTTP Server Includes :requiring The Server Library, Then Call http.createServer(function(request, response) {}) To Generate Server, And Lastly Call Servers :listen(port) To Start Taking Requests. :start() Also Allows For Creating Of New Server Object When Included.

* The Response Object Has Methods Like :write('message') And :writeHead(200, {'Content-Type': 'text/plain'}) And Must Be :end() Ended Before Information Is Sent Back.

2. Node JS Characteristics

* Node JS Has NonBlocking I/O, Which Means While A Disk Read/Write Operation Is Taking Place The Server Can Service Other Requests. Only When The IO Event Finishes Is It Back To The Top Of The Process Que. #This is because call back is often very expensive.

* Because Of Nodes Event Based Nature, It Only Uses A Single Thread To Access All Requests Instead Of Spinning Up New Process As New Requests Come In. This Is Called :event :driven :programming And Node Uses :single :threaded :event :loop.# because we are not spinning up entire new process and threads for every request, we can work on many much smaller requests almost continuously. Great for ajaxing

* Node Is Event Based, Every Object (Includeing Server And IO Streams) Emit Events As They Are Being Processed.

3. Sockets

* What Happens When We Want To Send Data From Server To The Client? We Use Nodes Socket .IO Library To Establish A WebSocket Between Server ANnd Client To Do Realtime Pushing Of Data. The Socket Librarys :listen() Methods Takes In A Server Object And Uses It Establish A Connetion.


4. Node Libraries

* Key Files Include The 'http' Library Which Has The :createServer Method That Takes A Function With Arguments For Request And Response, And The :listen Function That Tells The Server Which Port To Listen To. (It Is That Easy)

* A More Explicit Way Of Thinking About The :createServer Function Is To Think Of It As An Object As Add :on(request, callback(request, response)). And Tell It To :listen Explicitly.

* Some Key Functionalities Of The Server Object Is Its Ability To :writeHeader (200, {'Content-Type': 'text/html'}), :write To Actually Write The Message, And :end To Send The Request (It Doesnt Automatically Send Otherwise)

* Aother Useful Library Is The 'fs' Library, It Handes Crucial Functions Such As :readFile.

5.IO Streams

* Node IO Streams Are Chunks Of Data Read From The Disk, It Has Events Like :data And :event Which We Can Listen To And Fire Off Callback Events.

* The Main Writing Steam We Have Is The :response Object, Instead Of Ending It To Finish A Request We Can Creating A Read Stream Then :pipe() To The Response Object, This Is Useful For Loading Large Files.

6. Path Library
