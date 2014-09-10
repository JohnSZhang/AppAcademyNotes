:CodeStyle

1. Basics

Dont Repeat Yourself (DRY!) #Unless you are testing (for readability sake), try and refactor your code, reuse via method calls so they are both way easier to update without having to track things down individually and make things simplier/

Code Styles : 

# The basic idea here is to keep code as easy to read as possible. Since code is written once and read a hundred times this is crucial for yourself and others

- Indent Correct # For ease of reading

- Limit Line Length # Also for readability

- Avoid Overnesting # 2 levels max, anymore and it's too difficult to keep track

- Do Not Over-Coment # The code should speak for itself

- Use Line Breaks # Use it to separate ideas (say when you are about to return something, or add counter). Good idea to break out loops. Dont overdo it.

- Do Not Return Unless Returning Early # Just evaluate instead =)

- Interpolate Instead Of Concatenate # Much easier to read and actually easier to type once gotten used to. 

2. Good Methods

* Good Methods Are Atomic # Should do one and only one thing (even if its for the side effects) 

* Good Methods Are Short And Concise # Usually no more than 10 lines, if so maybe time to break it into two? Also What is Iterative Stiffening?

* Good Methods Read Like English # So they are easy to read and understand

* Good Methods Do Not Change Their Arguments # This could be dangerous if others access those arguments later, hence we use ! to signal danger

* Good Methods Have Good Names (Also Apply To Variables)

- Use Meaningful Names #Avoid names like sa, eb (edible bushes?)

- Not Too Long, But Long Enough To Be Meaningful #super_duper_awesometastic_counter is not as good as counter

- No Meaningless Names # arr, input, stuff are bad names!

- Array Index Can Be Short # Mathematical shorthand for i, j

- If Method Only Return Value (No Side Effect), Name Return Value # superhero_name(power)

- Use Verb_Noun Format If We Are Looking For Side Effects # transform_into_gold(bunch of lead)

- Use Convention For Method Names # If we have transform_into_gold already, then do not create turn_to_stone (even if it's a better name) stonify is even worse. 

3. Refactoring 
* Refactor Criteria Include : 

- Duplicate/Similiar Code # Fairly straight forward, makes things easier to fix/update

- Long Methods # Rule of thumbs being around 10, 15 lines max, any longer and we should break them a part

- Too Many Parameters # Dont make the method too complex, if so break them into pieces

- Data Clump # If data are closely related it is better to group them together logically. process << murder << cleanup

- Long Chain Methods # If You are always chaining them, maybe it's time to combine them 

- Indecent Exposure # Only open up methods that others need access to and no more. Coupling is degree which modules rely on each other, we want it to be loose

- Speculative Generality # Only design for what is currently needed, overly generalize and you will get nothing done

- God Objects # Objects which are related to/ required by many other projects, we want coupling to be loose so decrease these. 

