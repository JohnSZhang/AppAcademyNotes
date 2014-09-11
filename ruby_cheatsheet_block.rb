:Blocks / :Procs

1. What Is A Block Really?

- Blocks Are Fundamentally Chunks Of Code (In {} Or In Do End Blocks)

- Blocks After Function Call Are Passed To Method But Not As An Argument (Or As A Special Argument)

- Blocks Can Itself Take Argument In The Form Of |var|

2. How Are Procs Related To Blocks?

- Proc Is What Carries The Block Variable, It Is An Object That Stores A Blocks Data. If No Block Was Provided Proc == nil 

- Procs Are Used By Methods Via The & Sign, So Method(argument, &block) Works

- Procs Are Objects That Decends From Object Class . It Pretty Much Just Stores Texts Only. You Can Create Via new_proc = Proc.new { "blah blah" } Then Call It Via new_proc.call(argument1, argument2)

- Lastly, One Can Include Additional Procs To Method Call (But They Must Be Passed Individally Inside The () ) def method(proc1, &proc2) Then method(Proc.new{puts "hulk"}) {puts "smash"}

3. What The F&@^! Is Yield For Then?

- Yield Is Syntatic Sugar For Proc.call (Assuming We Add &proc To End Of Method Definition)

4. Using Blocks 

- Proc.nil? Is A Good Way To Check If Proc Exists, block_given? Is Equivalent Of Yield

- Never Return From Block Directly, Because It Will Return From Context Where It Is Defined (Which Is Outside Of The Block You Want It To)

- If You Wish To Pass Block As An Argument Append It With & Method(&block_argument) This Is How You Get Object.map(&:to_s) When Doing This We Are Actually Calling :symbol.to_proc

- To Turn Methods Into Procs Do :symbol_of_method_name.to_proc(argument) #Super Powerful But Confusing



