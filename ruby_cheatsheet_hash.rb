:Hashes

1. Create New
prophets = {}
prophets = {"Christianity" => "Jesus Christ Super Star", 
    "Islam" => "Muhammond The Unseen", "Buddhism" => "Buddha The Unpoisonable"} #Create new hash with initial values

2. Manipuldate Hash Values Individually
prophets.delete('Buddhism') #Delete via key value
prophets["Buddhism"] = "Buddha The Unpoisonable" # Adds/updates key/values


3. Select From Hash
prophets["Christianity"] # Returns "Jesus Christ Super Star"

4. Iterate Through Hashes
prophets.each do |religion, prophet|                    
  puts "#{religion} has the amazing teacher of #{prophet}"
end
# Christianity has the amazing teacher of Jesus Christ Super Star
# Islam has the amazing teacher of Muhammond The Unseen
# Buddhism has the amazing teacher of Buddha The Unpoisonable Keys order appears to be memorized

5. Hash Properties
prophets.keys # ["Christianity", "Islam", "Buddhism"] order preserved
prophets.values # ["Jesus Christ Super Star", "Muhammond The Unseen", "Buddha The Unpoisonable"] 

6. Hashes Manipulation Without Iteration 
prophets_new = {"Science" => "Newton The Alchemist", 
  "Christianity" => "Christ Arisen In Ultimate Holy Ghost Form"}
prophets.merge(prophets_new)  #{"Christianity"=>"Christ Arisen In Ultimate Holy Ghost Form", "Islam"=>"Muhammond The Unseen", "Buddhism"=>"Buddha The Unpoisonable", "Science"=>"Newton The Alchemist"} Notice Ultimate Jesus is returned (he has) 

7. Search In Hash
prophets.has_key?("Evolution") # False
prophets.has_value? "Muhammond The Unseen" # True