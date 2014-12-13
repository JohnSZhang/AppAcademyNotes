:Design :Patterns
# What it is, benefits, when to use it, when not to use it
* Why Use Patterns?

- they separate out the things that change from those that stays the same, the program an interface instead of an implementation, they prefer composition over inheritance and they delegate.

- separateion: (serparateion of concerns) using design patterns, we can anticipate changes to the codebase and when future changes do occur, we can change only those parts that we already know are changing, keeping the damage as small and contained as possible.

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

* Strategy
1. when to use it : same as with template, when you have algos that behaves differently depending on some circumstances, and you do not want to have to rely on the creation of an abstract class and inheritance because that causes coupling of the parent class and its subclasses. (whcih might need to be changed at a later date)

2. what is it : the creation of completely separate family of objects that have a common interface that can be swapped out when delegated, and composited into the current Context class. however, we still need to pass the data that the strategies need to the strategy themselves now that we have a separate class just for handling those parts. we can now either pass those data individually (then we need to pass all data for all strategies, even if not all will be used) or we can pass a reference to the context class itself. this, however, increases coupling. we can use a proc object instead of an actual class in ruby as it increases flexibility, decrease the need for a new class and allows us to create new arbitary strategies on the fly.

3. example : when we want to easily have the ability to swap thing out on command. for example, if we want to sort an array of objects with an arbitary sort strategy instead of the default .length property we can define our own proc with its own <=> method. it is also useful to define arbitary generators/parsers that have the same interface and produces different output.

4. procs: rubys procs and lambda are a good way to get around a class creation if all we need is one big block of code. they can take in params via the |x, y| and whatever they return is returned when we call the procs :call method. and the shortcut for calling the default block passed into a method is the :yield keyword, short for taking the &block arg and call it.

* Observer

1. when to use it : when you have a huge system and many classes that all need to know about the state of each other, when a change in one object has cascading effects through the system and to many different unconnected others. but to do so either every object knowing about every other object will be a recipe for disaster when a change occurs.

2. what it is : the creation of an obervers array with a common interface (say update:) which will then be notified of any change that the base or Subject class happens, and each Oberserve behaves accordingly. now the Subject no longer needs to know about the classes that observes it, it simply needs to tell its Observers that something has changed. we can also use procs for observers instead of a new class, this way things are simplified.

3. example : the default example is the active record observers that observes for states like :after_update, :after_creates, etc. we can also use the observer pattern for other needs as long as you have messages that you want to pass to other objects without tightly coupling the classes. to not tangle classes with each other via a common interfaces that passes messages back and forth is the end goal. the difference between observer pattern and strategy is that we use strategy to do something via a common interface, while we use observer to simply notify observers of changes.

4. modules: modules are great for situations where oberserves are needed, especially since ruby does not allow for multiple inheritance. create an oberver module that creates an array of observers and updates/removes observers makes everyone lives easier. Note When Calling Super Without Arguments The () Are Not Optional, When Left Blank All Your Current Arguments Are Also Passed In.

* Composites

1. when to use it : when you have objects that you wish to behave a certain  (similar) way, not caring if they are in turn built up of even smaller component objects. in doing so we wish to hide the nature of the actual tasks from their end user.

2. what is it : it is the creation of objects that can behave just like a collection of the objects themselves. (think a stack of army in age of empires behaving just like how a single unit would). in order to do so we create a Component abstract class that gives us the interface that all subclasses share, a Leaf class that is of a subclass of Component but only contains one object, and a Composite object that holds a series of Leaf classes. both the Leaf and the Composite class share the same interface as defined by the Component class.

3. examples : a gui interface is a classic example of the composite pattern, where each blocks of the gui is in turn made up of smaller components (labels, buttons, etc) that are also gui components, we can click on all of them individually or the underlying block as a whole. the before mentioned age of empires unit stack is another example of the pattern.

* Iterator

1. when to use it : when you have an aggregation of a number of objects and wish to go through them not caring about the index of the individual elements or how they are actually aggregated (in a Composite object, for example)

2. what is it : there are two types of iterators, External and Internal Iterators. the external ones are separate objects which we can then use to controll the flow of the elements through whatever code we want to run on them, and not call next until we are done processing the current one while the internal iterators simply loops through each element as quickly as possible (especially dangerous in multithreaded environment), all are suceptible to self mutating blocks of code.

3. examples : iterators are everywhere in ruby, mostly internal to help us work with hashes, arrays, file IO, and many many more. it is also useful when we wish to loop through many different arrays that an object might contain (looking back probably should use it for asteroid-maybes moving objects arrays)

4. enumerables: rubys enumerable module is great to be mixed into any of your own code (it is how string and arrays share similar methods). one must first declar the <=> operator for the underlying comparisons, followed by an :each method implementation for the aggrategor method, and then a number of useful helpers such as all?, include?, and any? are provided by the mixin.

5. ObjectSpace: rubys way to keep track of all objects currently available in a ruby interpreter. can iterate through all of them with ObjectSpaces :each_object method that takes a class as an argument and allows us to only run blocks on existing objects of that particular class. very powerful for metaprogramming and inspection.

* Commands

1. when to use it : when you have some collection of actions that needs to be run more than once, and should be stored for future use though not caring about the actual state of the objects the procedures are running on.

2. what is it : Commands are objects which knows one or a series of methods which needs to be run periodically or based off some end user triggers. these actions should be very specific and for the most part context independent (ie it should know which file to delete but cares not what size the files are). it is often a very good practice to keep track of a list of commands to be run in a bundle as well as a list of past commands ran (including their affected state snapshots) so we can easily undo/redo actions in a chain like manner. this usually mean for every execute method theres a corresponding unexecute method, and it is good to create a Composite of commands so we can run them without knowing what the underlying unit commands are.

3. examples : rails migration files are some fine examples of this pattern, each migration file is really just a command that we can do/undo/redo at will as long as we define the up/down methods. others include periodic commands to wipe cache, clean db tables and installing programs.

* Adapters

1. when to use it : when you wish objects to send messages to each other yet the format of the messages are slightly different, so instead of rewriting the class using the message for a switch statement (causes a lot of grief and boilerplating) we need something more elegant.

2. what is it : a separate class of Adapters that takes one object and translates its messages to a format that is useable by a different class of objects, one which requires the correct format. it acts very much like a hardware adapter that changes 4 pins into a 3 pin plug but preserving the overall messages. it essentially creates a useable interface to an otherwise not compatible class of objects. it is also possible to monkey patch the adaptee class to achieve the same thing, but sometimes that is unwise as changing a complex or not well understood class on the fly might have unseen consequences.

3. examples : the activerecord adapters that are used by rails to connect to different types of databases. while the underlying sql code and database connection ideas are the same, the actual syntax are often different and we can use different adapters (all subclasses of the AbstractAdapter) to connect to the different types of databases.

* Proxy

1. when to use it : when we want to create a double of another object for reasons like security, location, or performance/lazy evaluation. what if we do not want unauthorized users to access an object, a person in a different locationt to access the object or not create the actual object (and take the corresponding performance hit) until it is absolutely necessary.

2. what is it : Proxy objects are objects which holds a reference to the underlying real subject and acts like a midderman between the user of the proxy and the subject. it passes messages via the same interfaces (barring security checks, etc) and receives/displays those messages without doing any actual work. a great way to create a Proxy object is to adopt rubys method_missing: method and pass those methods directly to the @subject object. this saves lots of boilerplating. we can also override the :subject method to only create it when its absolutely needed, and not at the initializing level of the Proxy object. the authorizing proxy is called a Protection Proxy, the stand-in proxy is the Remote Proxy, and the proxy which does not have a subject until absolutely necessary is the Virtual Proxy.

3. examples : proxies are mostly used when creating proxy servers that while behaves like their underlying subject, do not actually generate the server codes. they instead pass those method calls to the real server and passes back server replies.

* Decorators

1. when to use it : what happens when you want to add additional but varied functionalities to a class, and have the ability to mix and match them at will? different subclasses via template and strategy would be out as the numbers grow exponential to the number of possible combinations. and of course a massive object with all the methods is out as once again we need all the mix match possibilities mapped out.

2. what is it : Decorators are additional classes that adds things on top of existing class, using the same interface but adding little pices of additional processing to the output so that one can mix/match and choose whichever one needs. we can do this either by adding additional modules or create dedicated classes, althoug modules are not possible to un-extend once extended. with this pattern we need a Component that both ConcreteComponent and Decorators inherit from, with Concrete Component handling the actual procedures and the Decorators having a reference to another Component and adding those additional funcionalities.

3. examples : activesupports :alias_method_chain allows us to swap in different methods names and create a long chain of method called all with the same name.

* Singleton

1 when to use it : when there is something that you know should only have one instance of, say a database connection. we know there should only be one unique version of it so a class doesnt make much sense.

2. what is it : like the name suggests, Singletons are a class of objects where there is only one instance of the actual object. usually fetched/created by the class.instance method. we can use a global variable (not a great idea), hide the initialize method or use class variables (making the class and/or the module a singleton) however, we need to be aware that the Singleton should only be there for reasons of there being only an unique instance of the object, and try to limit other classes knowledge of the singleton as much as possible.

3. examples : database connections thats used system wide by the various parts, as well as activerecods reflection dicitonary class are classic examples of the singleton. after all, there are and should only be one of them.

* Factory

1. when to use it : when you want to create objects of different kind depending on the circumstances, kind of like the template pattern, but instead of end procedures you want to receive end objects.

2. what is it : the Factory pattern is the application of the template pattern on to objects instead of methods. you will start with a basic Creator class that builds a generic object, then different subclasses of Concrete Factories that builds particular types of different objects (the Products). a more efficient way of creating Factories is the Parameterize Factory Method that takes as its initializer name of the classes to be built, this way we can get rid of different subclasses of the factories and create dynamic ones at will. Abstract Factories is an attempt to curtail this overly dynamic nature of the parameterize factory that limits the combination of classes that one can create in a factory, like a receipe book for compatible products.

3. examples : ruby generally uses a more dynamic version that uses metaprogramming to know what the correct class name should be. though we can see in the activerecord adopter some uses of taking in string arguments, concatnate with method partials then calling the right connections, this is similar to a parameterize factory.

* Builder

1. when to use it : when you have a really complex object that cannot be built in go one (or you choose not to depending on the configuration). with so many moving parts it will be ugly to write a single initilizing method.

2. what is it : the Builder is an object reponsible for creating and returning another object of a particular class. yet the Builder object breaks down the overall construction into many smaller configurable and managable parts so one can configure them as one wish and step by step. this is especially powerful with the ruby :method_missing as one can parse out those ad hoc method names and build them on the fly.

3. examples : the mail factory gem in rails, building an email message by taking its individual parts, parse them out and put them back together before the message is actually sent. the activerecord library also heavily uses the method_missing for its magical finds. 
