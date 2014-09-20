:Rspec :Working :With :Ojbects 

1. Subject

* subject(:knight) { Knight.new } #This creates an instance of the Knight class and call it knight to be used later in it blocks for tests

* Subject Is Implicitely Created When Using describe Knight do Syntax. There Can Only Be One Subject Per Test. 
  
  * expect(its(:type)).to eq(:Fighter) #its implicitly calls the method on the subject of the test. Useful. 

2. Let

* Let Creates Other Helper Methods Used In The Tests, Can Be Both Real Objects Or Doubles. # Should use doubles when doing unit testing of a class, and real ojbects when integration testing. 

* Use Let Methods Over Instance Variable When Possible #Instance variables can be created anytime and returns nil. Let also lazy loads so it will not be called unless absolutely needed by the it block. 

* let(:claymore) { double("claymore", :attack => 14) } #This creates a fake double of a claymore object and gives its attack method a return of 14.

* Due To It Blocks New Scope Creations, Let Helper Methods/Objects Do Not Bleed Their State Changes Between It Blocks. 

3. Doubles/Mocks

* let(:monster) { double("centaur", :attack => 13) } #The double method creates a dummy method that has the name of centaur (for debug) and an attack method that returns 13 damages. We would call the monster.attack method in it blocks. 

* monster.stub(:defend).and_return("the centaur holds its hooves in a defensive state") #The stub is another way for us to add a method to the double class.

* expect(monster).to receive(:slash_attack).with(14) This Allows Us To Test That Doubles Receive Methods. #Must be defined before the subject calls method, because it adds a listener to the double object.


