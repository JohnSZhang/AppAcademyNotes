:Enumberables

1. What Is It
# Functions in a modules which can be used in other modules (in this case hash and array, etc.). Used to go through things
example_num_array = [7, 11, 13]
example_text_hash = {"red" => "the color of desire", 
      "black" => "the color of despair"}

2. Enumberables That Changes Things
example_num_array.each {|num| puts num + 2} # 9, 13, 15 Each goes through everything and does something individually then returns original array. Use for side effects

example_num_array.map {|num| num ** 2 } # [49, 121, 169] Returns what results after you do something to each element, returns the resulting new array. Use if you want the new array. 

example_num_array.inject(0) {|initial, num| initial + num } # 31 Does something with an initial value, good for products and sums

example_num_array.inject(:*) # 1001 Can be a very powerful shorthand


3. Enumberables That Finds Things
example_text_hash.select {|key, value| key == "red" } # {"red"=>"the color of desire"} Returns elements where the block evaluates to true

example_num_array.count # 3 This is straightfoward

4. Enumberables That Are Boolean 
example_text_hash.any? {|key, value| key == "silver"} # Returns whehter one of the items passes the test in block, silver like the color of the candle sticks. all? and none? are similar

example_num_array.include? 11 # Simlar to any, with value instead of boolean test




