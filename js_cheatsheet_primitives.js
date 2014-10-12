:js :primitives

1. Primitive Types

* Js Has 5 Types Of Primitives Data Types : Number, Boolean, String, Null, And Undefined.

* Because Javascript Is Dynamically Typed, Types Are Converted When Methods Take Incompatible Arguments. # Is is always a good idea to use === whenever evaluating equality of two objects, as this does not force conversion of variable types and cause weird issues. 

2. Numbers

* JavaScripts Numbers Are ALL 64-bit Floats. No Separate Integer Type. NaN Results From Operation Which Cannot Produce Number As A Result, It Is Not Equal To Any Number(Including Itself So Use NaN !== NaN To Test) #Integers up to 53 bits are okay under this 64bit scheme of doubles. Best practice is to always convert to ints then convert back. You lose the extra 11 bits of data as tradeoff. Bitwise operators are done in 32 bit signed intergers.

* The :toString() Method Converts Numbers To Strings With The Optional Radix That Allows Specification Of Base. 

3. Strings

* Js Strings Are Similar To Other Lanages, Single Or Doubled Quoted And Can Be Escaped With \. All String Chars Are 16 Bits Wide, Which Means Any 32 But Unicode Char Is Represented With 2 Chars And Will Wreck Havoc With String Length (Use \u0000 For Those Unicodes). Use With Care. 

* :replace() Does A Search And Replace. If Using Regex Can Use $ Symbole To Specify Capture Groups. :split() Method Works Like Others Languages. 

4. Arrays 

* Arrays Are Actually Really Just Objects That Inherents From The Array.prototype Object. This Gains It The .length Method. The :length Method Returns What The Highest Index In The Array Is Instead Of The Number Of Elements. 

* Array Has :join() For Conversion To String And :concat() For Concatnation. 

* Other Useful Global Array Methods Include :slice(), :push(), :pop(), :shift(), :unshift() :sort(). :splice() Is Special In That It Allows For Both Removal And Insertion, Syntax Is :splice(Start, DeleteCount, New Item).

5. Regex

* Regex Can Be Created Via Regex Literal // Followed By Options g i m Or Via new Regex(). :g Stands For Global Match, :i For Case Insensitive, And :m FOr Multitime. 

* The Regex.exec() Does A Full Search And Returns An Array Of All Results While The Regex.test() Simply Returns True Or False. 

6. Undefined

* One Should Use Either === undefined Or typeOf(x) === "undefined" To Test For Undefined Fales. Truthiness Is Not Enough. 

