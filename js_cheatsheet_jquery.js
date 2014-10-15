:jQuery

1. The All Mighty Selector $

* $ Symbol, Otherwise Known As jQuery(), Is Ultimately A Selector Of DOM Elements That Returns A JQuery Object, Which Is Ultimately An Array Of HTML Elements. Put Inside The () Whatever Selector String You Want. Can Also Pass In DOM HTMLElements And It Will Wrap A Jquer Object Around It. 

* The Returned JQuery Objects Can Be Iterated Through The :each() Method. Which Can Then Have Methods Like :addClass(), :removeClass(), And :toggleClass() Applied. 

2. Traversing DOM

* After Having A Jquery Element On Hand, :parent(), :childre() And :siblings() Can Be Called To Get Relevant Elements. This Way We Can Mass Update Elements With Each And Methods Like :attr(), :text(), :style() Which Updates Element Attributes. 

* :remove() Works The Same Way To Remove DOM Elements While :append() Allows Addition Of New Elements, The $ Symbol Is Overloaded To ALso Be A Constructor When Needed. 

3. Udpating Selected/New Elements

* JQuery Allows For Updating Of Elements Mainly Via The :val(), :text(), :attr(), :prop(), 

4. Event Handling

* The JQuery :on() Method Is Sugar For addEventListener. The Syntax Is Item.on(eventName, Callback_Function). To Remove We Just Use :off(eventName). 

* Event Handlers Event Argument Always Has A :currentTarget Property Which Points To The HTMLElement. The Events :preventDefault Function Also Stops The Current Events Default Function From Firing. 

5. $(document).ready

* If We Pass A Function Into $(), Then The Functions Statements Will Only Run After The Entire Document Has Been Loaded. This Way We Make Sure The Right Elements Are Selected By Our Javascript. This Is Also Sugared $(document).ready(function_here). 

6. Data Logging

* It Is Common To Store Js Element Data In Html Elements Via The :data() Method, Which Produces A Data Attribute (With Your Set Name) And Values Can Either Be Selected Via Jquery Select Or As A Event Lisenter. The Data Can Be Text Or JSON.  