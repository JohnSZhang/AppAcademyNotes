:Rails :Validation

1. Basics

* Validations Ensure That Data Is Correctly Filled Out Before They Go Into Database. #Not only does it make sure data going in the good, it makes sure data doesnt interact with others in a weird manner. While SQL can validate data, model level validation is often more appropriate

* Validations Are Run As Part Of The Save Process, Before Update/Insert Statements Are Generated. The :valid? Method Is What Actually Calls The Validations #Valid? can be used on it's own. 

* The :errors Method Generates A ActiveModel::Erros Object And Has A Hash Like Structure Where Keys Are Attribute Names And Values Are Whats Wrong With It. :erros.:full_message Turns It Into Human Readable Form #Run it after you tried to run valid? Or save


2. Built In Validators

* :presence Makes Sure The Attribute Is Not Empty. Use :validates :presence => true Syntax. #Test for object presence instead of their foreign key existence. 

* :uniqueness Makes Sure Attribute Value Is Unique. Can Pass In :scope Option To Make Sure It Validates Based On A Certain Scope. Add :message To Provide Custom Error Messages. 

* Other Common Ones Include :format, :length, :numericality (greater_than, less_than) And :inclusion

3. Custom Validators

* Can Raise Custom Errors Via The errors[:attribute_name] << "Wow, you broke it", ActiveRecord Will Prefix Variable Name And Raise Error. #Use errors[:base] if you cannot think of a specific one. 

* Extend ActiveModel::EachValidator To Create Your Own Validator Classes. Do So Instead Of Writing Individual Methods To DRY. #Need To Implement #validate_each that takes record, attribute_name and value arguments. 

4. Misc

* String Default Length Is 255, If You Need More Should Either Raise :limit Option On Column, Throw An Erro Via Validation Or Use Text Instead. 

* :allow_nil / :allow_blank Options Skip Valiation When Attributes Value Is Either Nil Or Blank. 

* :message Allows You To Override Default Message And :if Allows Fine Control Over When Validation Should Happen (:unless Works Too Yay)






