:Rspec :Syntax

1. How Does Rspec Work?

* Rspec Loads Files In Lib Dir And Correspoding Specs In Spec Directory. # It automaticlaly searches for the spec files in /spec and adds the coressponding lib folder to the $LOADPATH variable so you can simply require them. 

* There Are Integration Testing And Unit Tests #Units tests test one file/class at a time and should not dependent on other classes to decrease coupling. Integration tests then test the entire program to make sure the entire workflow works.


2. Describes And Its

* Describe Is The Most Basic Unit Of Testing, Although Itsef Does Not Contain Code. #Think of it as describing the file you are testing. Say I'm describing the Vampire class and It "Suck Blood From Others"

- Describe Can Take A Class #Usually you use string of method name for describe argument, but you can also use class and it will create an instance of that class as a subject variable. 

* Contexts Are Another Name For Describe, But They Are Used To Test Different States Of The Same Functionality. # For example, to test different bite behaviors of the vampires we would use context "Vampire is hungry" do before(:each) do vampire.hungry = true. 

* 'It' Is The Elemental Testing Unit, It Is Where The Code Go! #It "bites peoples head off" do Vampire.bites(poor_sap). Only here are zombie instances biting

- Its Should Tell Us What It Is Testing #It "turns into a bat" would be a good one for testing vampire.transform method. 

3. Expects And Friends

* Expects Do The Heavy Lifting # Used to be the .should method (phasing out), it compares the code ran with some expected value. Ie. expect(Vampire.new).to be_a(Vampire)

* Expect Takes Two Form Of Arguments (Blocks Vs. Args) # The Block form of expect {} doesn not return a value, simply runs the block and we can test for exceptions this way. The () form does return a value/object.


6. Before And Afters

* When Using Context We Often Want To Do Things TO Update The State Of The Test To The Context We Are Testing. #that's why we are using contexts to start with!

* Before(:each) Comes Handy. #Before each allows us to update the state of things bedore each tests. Say if we want to test a hungry vampire's behavior in day/night we'll do Before(:each) do vampire.hungry = true.

* Before(:all) Also Exists. #Usually used for database, cache, etc where we want to change things just once then read from them. not used as frequently.

* After(:each), After(:all) #These also exists, haven't really used them yet but can be used for wiping the database after testing. 

6. Pending Specs

* We Can Leave Off The Do End From Its To Create Pending Specs. #These are good for outlining what you want the object/methods to do, then fill them out as you move along. 





























