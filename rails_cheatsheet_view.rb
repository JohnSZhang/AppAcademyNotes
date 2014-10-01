:rails :views

1. Response Creation

* Views Handle Presentation Logic, This Means Building HTML Pages, And Perhaps Even XML/Json Objects. The Two Main Ways Of Doing So Are Via Calling The :render Method Of Controller Object Or The :redirect_to Method To Use A Different Resource.

* To Render A Certain Template, Call The render :template_name (There Are Also Many Other Ways To Do This More Explicitly, Check Documentation), Any Instance Variables That Are Held Within The Class Are Also Passed Along. #Views seem to share the same object as controllers. 

* Only Render Once Per Controller Method, Rendering Does Not Act As A Return From The Method, Double Rendering Will Throw An Error. 

* If We Want To Redirect The User Instead, User The :redirect_to (url_location) Method. #This is especially useful for after receiving a post/patch request, but do remember that it is ultimately the client that requests the second url, not a serverside rerendering (youll just render another template instead.)

2. Templating

* ERB Is Short For Embedded Ruby Code, Where We Use "<% %>" Tags To Add Control Structure And "<%= %>" Tags To Atually Force Rendering Of Data In Html.

* Views Have No Acess To Controllers Methods/Data Other Than Instance Variables, While One Can Passdown Local Variables To Partial Forms Via Hashes As An Additional Argument. 

* Helper Methods Like :link_to ("link text", link_url) And :button_to ("button text", action_url or action_name,  method: :method_name) Are Useful For Easily Generating Buttons And Links (Although Not Sure Why One Would Want To Use Button With Any Method Other Than Delete)

* Rails Take POST Value From Forms And Generate A Params Hash From It. It Is Important To Wrap Input Names In Correct "object[attribute]" Form So Your Require(:object) Will Work Correctly. #Aslo, reason we require at all is so we dont mess with the additional controller/action keys. A hidden _method input is often used because forms only have post and get methods, rails will automatically pick it up (somewhat hacky ya?)

3. Rails Parameter Convention

* Hashes And Nested Hashes Can Be Built With [], For Example tiger[fur][color] Would Translate To { 'tiger' => { "fur" => { "color" => color_of_input } } }

* If Values Are Duplicate, Last Value Wins, A Way To Get Around That Is To Use The [] At End Of Name So It Becomes An Array That Gets Added To. #No way to nest an array of hashes, however. 

4. Mailer Views

* Mailer Views Live In app/views/mailer_name, And They Are In The Format Of method_name_html.erb. There Should Also Be A Text Version Of The Email With Same Format In The Directory. Use Erb To Output Things As Usual. 

* Mail Domain Should Be Set In config.action_mails.default_url_option Under Config/Environment Files. Otherwise Use Link Heper Methods As Per Usual. 