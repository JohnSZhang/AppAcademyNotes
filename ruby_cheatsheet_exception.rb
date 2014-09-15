:Exception

#Overall exceptions are great but as we code we should focus on adding new functionalities instead of edge cases when things will go wrong. We can neither anticipate all potential errors nor is it worth the time untill we get to the hardening part of the product cycle. 

1. How Does It Work? Exceptions Are Raise In Order To Break Out Of Current Loop And Allow Caller A Chance To Handle It. 

* raise RunTimeError.new("HELP ME THERES AN ERROR") Raises Erorr And Gives It A Type

* rescue RunTimeError => e Rescues (Catches) Runtime Error With Message

* If Not Handled, Error Messages Will Bubble Up THe Stack Unil Top

2. Work Flow Of An Error

* begin => rescue => ensure => end Keywords Make Up The Cycke. Block Following Ensure Runs No Matter What. 
  
* retry After ensure Starts The Loop From The Beginning. Great For When You Need Things To Work No Matter What. 

3. Types Of Erros

* ArgumentError And RuntimeError Are Most Commonly Used. Can Also Create Your Own By Subclassing StandardError

 