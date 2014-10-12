:Regex :CheatSheet  

1. Basic Symboxs

* Letters Themselves Will Match Letters Of Their Kind, Ie abc Will Be Matched With fabcd.

* Similarly, 925 Will Be Matched With 363592578.

* Special Characters Require A \ In Order To Be Escaped Properly. This Includes Characters Like \ . ? + * 

* Use spance_ For Sapce, \t For Tab, \n For New Line And \r For Return. 

2. Group Matching Symbols

* \d Matches Any Digit In 0-9. D Stands For Digit, And \D Matches All Non-Digits

* . Matches Any Type Of Character, Period

* \s Matches Anytype Of WhiteSpace Characters. 

* \w Matches All Alphanumeric Charactesr, And \W Matches All Non-Alphanumeric Characters. 

* It Is Possible To Reference Previously Captured Groups With \0, \1, etc. 

3. Brackets

* [] Matches Any One Character Within Them, ie [abc] Matches A B Or C (But Just One Character)

* [] Can Contain Multiple Via Range, Ie [a-z] Or [0-9], Use [:alpha] For [a-zA-Z]

* ^ Symbol Inside Bracket Matches Anything But Whats To Be Followed. [^a] == [b-z]

4. Repetition
* {} Allows For Repeat Of Characters, {n} Will Match Exactly n Times, {a,b} Will Match From a To b Times. And {n,} Will Match From n To Infinity Times.

* Shortcut For Repetition Includes * For Zero Or More Times Of The Character Before And + For One Or More Times Of Previous Character Repetition. 

5. Meta Symbols

* ? Symbol Matches For Optional Search Of Previous Character, Saying op?q Matches Both opq And oq 

* Can Use (?: ... ) To Define A NonCapturing Group, Which Mathces But Does Not Capture

* Use ^ Outside Of Brackets Will Match Beginning Of Line, And $ Will Match End Of Line

* Use | To Denote Logical Or, Its A Good Idea To Put Optional Things In ().

6. Capturing

* Use () To Capture Texts Matched Within. These Could Be Nested To Capture More Than One Thing From The Same Line.

* Similarly, Use (.*) To Capture Them All





