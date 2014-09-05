:Strings

1. Create New
who_am_i = "Mama died today. Or yesterday maybe, I don\'t know." # Use \ to escape the quote, use \\ for escaping \
"Revolution! " * 3 = "Revolution! Revolution! Revolution! " 

2. Manipulating String Parts
month = "April"
love_hate = "It was a bright cold day in #{month}, " # Called string interpolation, only for " strings
love_hate += "and the clocks were" << "striking thirteen." # Methods to append string. 

3. Select String Parts
who_am_i[5,4] # "Died" Treats each letter as item in array
who_am_i[5..8] # Also "Died"

4. String Properties
who_am_i.length #50
nil.to_s # ""

5. String Maniuplation Without Iteration 
who_am_i.split(" ") # ["Mama", "died", "today.", "Or", "yesterday", "maybe,", "I", "don't", "know."] Can also put in regex separator
who_am_i.chomp('know.') # "Mama died today. Or yesterday maybe, I don't " Removes from end of string that match, useful for \n
" " + who_am_i.strip + "\n\r" = # "Mama died today. Or yesterday maybe, I don\'t know." Strips white space from beginning/ending, also has l and r versions
who_am_i.gsub(/Mam[a-z]/, "Papa") # => "Papa died today. Or yesterday maybe, I don't know." Regex find replace
"MOM".downcase + " papa".upcase # "mom PAPA" working with cases
who_am_i.to_i # 0 Cannot convert non string-integers to integer
"Mama".to_sym # :Mama, useful for hash keys




