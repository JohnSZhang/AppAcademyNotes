:NodeJs
1. What Is It?

* Node JS Is A Command Line Tool That Can Create WebServers Running On Javascript Codes.

* Basic Syntax For Creating A HTTP Server Includes :requiring The Server Library, Then Call http.createServer(function(request, response) {}) To Generate Server, And Lastly Call Servers :listen(port) To Start Taking Requests.

* The Response Object Has Methods Like :write('message') And :writeHead(200, {'Content-Type': 'text/plain'}) And Must Be :end() Ended Before Information Is Sent Back. 

2. Node JS Characteristics

* Node JS Has NonBlocking I/O, Which Means While A Disk Read/Write Operation Is Taking Place The Server Can Service Other Requests. Only When The IO Event Finishes Is It Back To The Top Of The Process Que. #This is because call back is often very expensive.

* Because Of Nodes Event Based Nature, It Only Uses A Single Thread To Access All Requests Instead Of Spinning Up New Process As New Requests Come In. This Is Called :event :driven :programming And Node Uses :single :threaded :event :loop.# because we are not spinning up entire new process and threads for every request, we can work on many much smaller requests almost continuously. Great for ajaxing

3. Sockets

* What Happens When We Want To Send Data From Server To The Client? We Use Nodes Socket .IO Library To Establish A WebSocket Between Server ANnd Client To Do Realtime Pushing Of Data.
