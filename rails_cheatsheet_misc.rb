:Rails :Misc

1. View Helpers

* One Can Create New Helpers In /app/helpers/{controller_name}.helper.rb And They Will Be Made Available In Views Of That Controller. Application Helpers, On The Other Hand, Can Be Used In All Views Of The Site. 

* Useful HTML Related Helpers Are :html_safe, Which Renders HTML As Is (Do Not Use For User Input), And :html_escape(Which Fixes Inputs), That Escapes HTML Strings And Can Be Aliased As h(). #We can also pass blocks to ruby helpers, and later one use #capture to grab it for rendering. 

2. Decorators

* Decorators Are Like Rendering Helper Methods, But For Model Classes. It Is A Design Pattern That Adds Extra Methods To A Model Object That Does Only Rendering Related Texts. Very Useful For Adding More Rendering Possibilities Without Overbloating Your Layout Files. 

3. Concerns

* Used To Reuse Code As Well As Preventing Models From Getting Too Bloaded And Chunky. They Can ALso Be Shared Between Models#How is it different from modules?? I dont get it at all. # Also What Is THis ClassMethods stuff?



4. Polymorphic Associations

* Polymorphic Association Allows Mdoels To Belong To Multiple Models. To Activate Via polymorphic: true, And :has_many :class_name, as: :some_nickname. The Polymorphic Subject Itself Need To Have A Type And An Id. #Shotcuts to t.reference polymorphic: true, but not necessary

