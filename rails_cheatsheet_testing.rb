:Rails :Testing

1. Rspec

* Rspec-rails Gem Is Required To Run Rspec With Rails. And Everytime Database Changes Are Made db:test:prepare Must Be Call To Make Changes To Test Database, And rake db:test:load To Load Tests Data Into Database. #Can also add --color, --requre spec helper and --format documentation for additional rspec setup. 

* In Config/Application.rb, To Override Default Testing Framework, Need To Update Config Generator And Add :rspec As test_framework As Well As Its Config Values. #Additional options include :fixtures, :helper_specs, controller_specs, etc. And spec name should follow class_name.spec

* To Genereate Tests For Rails, Use rails g rspec:install, Spec Files Will Automatically Be Generated When Creating Models. Testing Methods And Validation Is Similar To Working With Plain Rspec Files (Generate And Expect To Have Error_on) #Use shoulda matches to test associations. Can test methods via either where_value_hash methods or query the database directly. 

2. Factory Girl And Faker 

* Factory Girl (Hardworking Gals They Are) Are Used To Define How To Generate Models Via The .build Method. Once Defined Using The factory :class_name Method They Can Be Used With The FactoryGirl.build(:class_name, :attribute =>"") Syntax. #To get rails to use factorygirls, use the fixture_replacement method, with class_name and directory arguments.

* The factories.rb File In Root Spec Folder Defines What Files Can Be Used. Each Nested BLock Of Factories Also Inherents All Properties Of Parent Factory, Useful For Creating One Off Sub Factories With Particular Attributes. All Default Attributes Are Overrideable In Actual FactoryGirl Creation Calls. #use sequence when you wish to generate different names. 
 
* The Faker Gem Produces Randomized "real" Data To Be Used In Testing Environment, Use Faker::Namespace.fake_type To Get A String Of Fake Name. 

3. Capybara

* Capybara Is Used For Integration Testing As It Allows Simulated User Behavior On Web Pages. Its A Part Of Behavior Driven Development (BDD) #After installation the spec needs to go under spec/features. 

* Capybara Uses :Feature Instead Of Describe And :Scenario Instead Of It Blocks. It Rollsback Transaction After Test Is Done Unless Its js=>true Setting Is On, In That Case, Use Databaes Cleaner To Clean Up Database. Helpful To Also Use :Launchy Gem To See What A Page Looks Like Half Way Through A Test. 

* Common Capybara Methods Include : 

- Visiting a page
  visit('/root') 
  visit(secrect_treasure_path(treasure))
- Clicking
  click_link('link-id')
  click_link('Link Text')
  click_button('button_id')
  click_on('Link Text') # clicks on either links or buttons
  click_on('Button Value')
- Forms
  fill_in('id-of-input', :with => 'dark secrets')
  fill_in('Password', :with => 'nopassword')
  fill_in('Description', :with => 'text of moby dick')
  choose('A Radio Button')
  check('A Checkbox')
  uncheck('A Checkbox')
  attach_file('Image', '/path/to/image.jpg')
  select('Option', :from => 'Select Box')
- Content (page)
  expect(page).to have_content('Wonderful Content!')














