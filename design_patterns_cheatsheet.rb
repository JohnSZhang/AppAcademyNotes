:Design :Patterns
# What it is, benefits, when to use it, when not to use it
* Why Use Patterns?

- they separate out the things that change from those that stays the same, the program an interface instead of an implementation, they prefer composition over inheritance and they delegate.

- separateion: using design patterns, we can anticipate changes to the codebase and when future changes do occur, we can change only those parts that we already know are changing, keeping the damage as small and contained as possible.

- interface: over: implementation: with our ability to anticipate change, we can program an interface and skip checks to see if objects are of a particular type. ie. all vehicles travel. this reduces coupling as classes no longer need to know what each other does/is

- composition: over: inheritance: instead of having subclasses inhereit from parent classes and include all of their methods, we build them from the bottom up, giving objects references to other objects, and using those objects functionalities. (for example each rails instance creates just one (or a couple of models, the view it needs, and only one controller that it needs with all the functionalities of that view/controller) Instead Of Saying An Object Is Something, We Say An Object Has Something. Instead Of The Rails App Knowing About All The Correct Rendering Codes And Methods, Have Just The Right Controllers And Models.

- delegation: delegation essentially means instead of having a method inhereited from a parent class we instead call the method of another object that we have access to (already composited right?). this comes at the cost of an extra method call and some more boilerplate code, but allows for much more flexibility.

- you: aint: gonna: need: it: only implement solutions and design flexibility for things that you need right now. if you do not need it now, chances are you wouldnt need it later, either. the reason being you are betting on both the extra feature will be needed for the future and that the future throws a change that your flexibility can handle right now. both are not certain. make the system flexible enough for the problems today, no more.

* Aggregation What It Is And How It Relates To DeComposition/MVC

* Templates
1. when to use it : when there are some fundamental parts of a class that needs implementation to change depending on some condition (for example, different formats). and writing different concrete variations with loads of switch statements is just so very painful and ugly and messy. we write different templates for the varied parts of the algo, with an abstracted base interface parent class. 

2. what is it : the creation of an abstract class (hence how it differs from interface, it has this template: method:) that has one implementation of an method who unites all other unimplemented abstract method. followed by different subclasses that implements the abstract methods depending on those conditions we needed at first.

3. example : when we need two different rendering templates, html and jason, they all have the same render method, yet their actual format can be completely different. even the creation of a new ruby object can be thought of as a template with the initialize method call being a hook to be implemented individually.

4. Hook: Methods: : none implemented method that can be overridden in subclasses if needed and only if needed, unlike abstract methods they do not throw any errors. Remeber The After_Validations, Before_Saves Of Ruby On Rails (Even The Parse Of Backbone.js Can Be Thought Of As A Hook)? These Are Just Empty Methods, Overriable But Not Needed Otherwise.

5. how to write it : first start with the concrete implementation, then write the abstract class with all the necessary methods filled in, then write the first subclass that implements those methods. do not need to overthink and write more hooks than is necessary.
