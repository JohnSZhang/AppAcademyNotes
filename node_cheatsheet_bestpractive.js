:Node :Best :Practice

1. Dependencies

* It Is Always A Good Idea To Define A :package.json File That Others What The Application Dependencies Are. Use It To Define Name Of Your App, Its Version, And Dependent Libraries.

* Use :npm Install To Get The Dependencies (Its Just Like Rubys Gems) It Is Also A Good Idea To Put Down The Repository Name/Infor And A Readme File.

2. MIME

* The MIME Library Is Very Helpful When We Need To Server Up Static Resources And Do Not Know What These Files Response Content Type Should Be. It Automatically Figures It Out(Simply Use :mime.lookup(file). This Way, Css Are Css Files And Javascripts Are Correctly Tagged With Type="Text/Javascript"

3. Caching

* Because Caching Data In RAM Is Much Faster Than Accessing Data File Disk (Read/Write IO Are Expensive), It Is Good Practice To Have A Cache Variable And Serve From The Variable Whenever Possible.
