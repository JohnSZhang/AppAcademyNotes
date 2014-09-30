:Rails :Session

1. Statelessness

* Http Protocal Is Stateless (Requests Are Independent Of Each Other), So In Order To Pass Data From One Page To The Next We Need To Use Cookies (And Or/Via Long Url Strings). 

* Session Token Is Stored In The Cookie To Be Varified By Server Until Such Token Expires Or User Clears It. #Even Permanent cookies only lasts 20 years, if no expiration date is set, sessions lasts until browser is closed. Cookie data is not trustworthy.

2. State & Controllers

* Cookie Session Data Is Stored When It Issues Redirect Response, That Same Data Is Used To Send Next Get Request. 

* Rails Provide The :session Method To Allow For Easy Session Variable Setting And Retrival. Simply Call Its Hash Like [] Methods To Set/Get Them. 

* :flash Is A Controller Method Very Similar To Session Except It Only Exist For One Extra Request And Is Deleted Afterwards. :flash.now Makes Things Even Faster By Providing The Data On The Current Requsest Before Rendering. #Cookie data can be set manually with a little more options

3. Authentication

* Use Authenticity_token To Prevent Cross Site Request Foregery. Such Tokens Should Be Embedded In Every Forms And Saved In Users Session Data. The Helper Will Look For Authenticity Token In Params When Processing Forms. 

* Should Use Professional Gems Such As Bcrypt-Ruby To Both Salt And Hash Your Passwords. 



