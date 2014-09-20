:Rspec :Matchers / :Expectations

1. Matchers

* Basic Equality Matchers Are eq() For == And elq() For eql?() 

* Comparisons >, >=, <, <= And be_within(change).of(mean) Are Supported

* match(/regex/) To Test For Regex Expressions

* be true, be false Tests If Expected Is True Or False

* {}.to raise_error(ErrorClass, "Message") To Test Errors

* Powerful Predictive Matchers Allows For .to Be_***? And .to have_XXX(:arg) #Tests for subject.xxx? and subject.has_xxx?(:arg)


2. Class-Related Matchers

* be_an_instance_if(shark) To Test Class ==. 

* be_a, be_an, be_a_kind_of To Test For is_a?

* To Test If Object Ids Are The Same Use be() And equal()

4. Other Matchers

* .to include(el) To Test If Result Includes Element. Also Has start_with, contain_exactly, And match_array()

* .and / .or Allows You To Create Compound Matchers. # expect(sharks).to be_a_kind_of(:Fish).and include("Jaws")


