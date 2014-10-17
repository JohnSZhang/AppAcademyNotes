:jQuery

1. The All Mighty Selector $

* $ Symbol, Otherwise Known As jQuery(), Is Ultimately A Selector Of DOM Elements That Returns A JQuery Object, Which Is Ultimately An Array Of HTML Elements. Put Inside The () Whatever Selector String You Want. Can Also Pass In DOM HTMLElements And It Will Wrap A Jquer Object Around It. When Selecting Is Also Possible To Pass A Second Optional Argument Into $, It Provides A Parent Context For The First Element To Select On. Lastly, It Is Possible To Create New HTML Elements Via $('') With Either Raw HTML String Or Tab Name, Object Containing Attributes. 

* The Returned JQuery Objects Can Be Iterated Through The :each() Method. Which Can Then Have Methods Like :addClass(), :removeClass(), And :toggleClass() Applied. 

2. Traversing DOM

* After Having A Jquery Element On Hand, :parent(), :children(), :closest(), :next() And :siblings() Can Be Called To Get Relevant Elements. This Way We Can Mass Update Elements With Each And Methods Like :attr(), :text(), :style(), :val() Which Updates Element Attributes. Lastly, After Using Traverse DOM Functions, Use :end() To Get Back To Original Selection. 

* :remove()/ :replaceWith() Works The Same Way To Remove DOM Elements While :append() And :prepend() Allows Addition Of New Elements From Head/End (There Are More, Like :clone(), Look Them Up), The $ Symbol Is Overloaded To ALso Be A Constructor When Needed. 

3. Udpating Selected/New Elements

* JQuery Allows For Updating Of Elements Mainly Via The :val(), :text(), :attr(), :prop(), While JQuery Getters Tends To Return The First Elements Value, JQuery Setters Have Implicit Iteration And Sets The Attribute For All Elements Of The Collection.

* Can Use :is() With A Selector As String For Comparison. The, Use :not() And :filter() To Filter Current Collection, And :has() To Ones That Contain Children Of Certain Attribute. 

4. Event Handling

* The JQuery :on() Method Is Sugar For addEventListener. The Syntax Is Item.on(eventName, Callback_Function). To Remove We Just Use :off(eventName). 

* Event Handlers Event Argument Always Has A :currentTarget Property Which Points To The HTMLElement. The Events :preventDefault Function Also Stops The Current Events Default Function From Firing. Console Log :event Object To See All The Goodies. 

* Some Common Event Shortcut Types Are :mousein(), :mouseout(), :keypress(), :keydown(), :focus(), :blur()

5. $(document).ready

* If We Pass A Function Into $(), Then The Functions Statements Will Only Run After The Entire Document Has Been Loaded. This Way We Make Sure The Right Elements Are Selected By Our Javascript. This Is Also Sugared $(document).ready(function_here). 

6. Data Logging And Retrival

* It Is Common To Store Js Element Data In Html Elements Via The :data() Method, Which Produces A Data Attribute (With Your Set Name) And Values Can Either Be Selected Via Jquery Select Or As A Event Lisenter. The Data Can Be Text Or JSON. 

7. Event Delegation

* Often Times We Want To Add Event Listeners On All Elements Of A Certain Type But Cannot As We Often Have To Modify Our DOM, This Is Why We Have The JQuery :target And :currentTarget.

* With Event Delegation, We Will Add An Event Handler On A Parent Object, Which Will Receive Its Childrens Events As They Bubble Up The Call Stack. In These Cases The Parent Object Is Event.currentTarget And The New Child Is Event.target. This Is Call :event :delegation Of Children Events To Their Parents And Is Done WIth JQuery On The .on()s Second Argument.

8. Event Triggering

* Sometimes We Want To Trigger DOM Events From Other Parts Of The Program, In These Casese We Can Use The .:trigger('method_name') Function Of JQuery To Trigger That Specific Function On That Specific Element. 

9. Plugins

* JQuery Plugs Modifies JQuery Prototype Object, Which Extends Additional Methods To All JQuery Objects Created In The Same Namespace.

* All JQuery Object Functions Are Stored In The $.fn Object, Therefore, In Order To Add Additional Functions To JQuery We Will Need To Add Additional Property To The :fn Object. #Though one can store additional helper methods simply in $, if these methods do not need a bidn to a jquery object. The fn is kind of like a prototype. 

* Good Plugin Practice Includes IFFE, Use Default Option Objects And Merge With $.extend, Leave Some Functions Extendable And Public While Keeping Most Under A Closure 

10. Cool Effects

* JQuery Has Lots Of Cool Effects That Works With Most Elements, Such As :fadeIn(), :fadeOut(), :show(), :hide(), :fadeOut(), :slideUp(), :slideDown(), :slideToggle(), You Can Even Define Your Own With :animate() And Use :stop(), :delay() To Spice Things Up!

11. AJAX

* While AJAX (Asynchronous Javascript And XML) Is Not Techincally A JQuery Only Thing, Jquerys :ajax Method Allow Us To Make Ajax Requests Easily Ove Different Browser Types. The Method Take Either A Configuration Object Or An URL And An Optional Configuration Object. 

* The Configuration Object For Ajax Can Containt The Properties Of {url: , type: , data: , dataType: , success: , error: }. The Response Of The Request Will Be Passed On To The Success/Failure Callback Functions.(Can Also Chain A :then() With Success/Error Function Names To Do This) Because It Is Asynchoronus, It Will Return Before The Request Is Complete, It Is Not A Good Idea To Use The Resp Object Before We Are Sure It Is Returned. 

* If We Do Not Call About Responses We Can Use Shortcut Methods Like :get() And :post().Likewise, We Can Set A Method To Be Called At A Later Time With The :deferred() Methods And Then Follow Its Resolution With A :poper() Or :when(), When Lets You Mix Sync And Async Operations As It Waits For More Than One Possible Async To Finish Running Before Passing Their Return Values Into Call Back Functions. 