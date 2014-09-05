:Arrays

1. Create New
example_array_texts = ['Sherlock', 'Watson', 'Moriarty']
example_array_nums = Array.new

2. Manipulate Array Elements Individually
example_array_nums << 1 << 1 << 2 << 3 # [1, 1, 2, 3] Adds value to end of array
example_array_nums.pop # Returns 3 and changes array to [1, 1, 2]: stack-like
example_array_nums.shift # Returns 1 and changes array to [1, 2, 3]: queue-like
example_array_nums[3] = 3 # Update value at certain position

3. Select From Array
example_array_texts[0..1] # ['Sherlock', 'Watson'] Note Array Starts At 0
example_array_texts[0, 2] # ['Sherlock', 'Watson'] User this syntax for pos, length of return, bromantastic
example_array_nums[1...3] # [1, 2] With ... Omits Last Item
example_array_texts[-2] # "Watson" Negatives start from last item, Watson's not good at anything
example_array_texts.first #Sherlock, always comes first
example_array_texts.last #Moriarty, comes last

4. Iterate Through Arrays                            
example_array_nums.each do |number|                  
  puts "Now you have #{number} number of rabbits!"
end
        #Now you have 1 number of rabbits!  
        #Now you have 1 number of rabbits! Basic loop through items
        
example_array_texts.
    each_with_index {|name, index| puts "#{name} is character #{index + 1} "}  # Really should be on one line, quick loop and block format
    
5. Array Properties
example_array_texts.count # 3 It's got 3 names
example_array_texts.empty? # False it's not empty
example_array_nums.length # 4 It's got 4 items

6. Array Maniuplation Without Iteration 
example_array_texts.join(", ") # "Sherlock, Watson, Moriarty" Joins with separator
example_array_nums.shuffle #[1, 3, 1, 2] Does not mutate
example_array_nums.sort #[1, 1, 2, 3] Does not mutate array


7. Search Array
example_array_nums[2] # 1 Retrieve value at position 
example_array_texts.include?("Irene") #False apparently this is another old boys club
example_array_texts.index("Sherlock") #0 Sherlock always comes first returns nil if not found
example_array_texts.sample #Watson You never know what you'll get next

8. Additional Notes 
Use Plural Form For Array Names And Singular For Loops
Have Arrays Hold Similar Type Of Objects (Do Not Mix Strings And Numbers)
