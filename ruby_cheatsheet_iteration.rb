:Iteration

1. While Loop

while person.alive 
  person.hustle
  if person.made_it
    break
  end
  person.dying(age)
end
# While is the most basic of loops, can break out of it, else need the condition to be constantly true. 

2. Each Vs For

tmnt.each do |turtle|
  print turtle + "loves pizza!"
end
# Every Ninja Turtle loves pizza, prefer method as it doesnt deal with index

for i in tmnt.each_index
  print tmnt[i] + "loves pizza!"
end
# Works, but not as good because we didn't need to keep track of i 

tmnt.each_with_index do |turtle, turtle_num|
  print turtle + " turtle num #{turtle_num} loves pizza!"
end
# Best of both worlds, can reference via index and dont have to worry about the starts at 0, -1 issues

3. Use Times

monkey_number.times do 
  p "steals another banana"
end
# Another way to iterate if you already know how many times
    
4. Range 
(1..100).each do |number|
  p number.to_s + " sheep..."
end
# Use range like an array for looping

(100...0).each do |number|
  print number.to_s + " beers on the wall.."
end
#Can also do reverse. 

5. Nesting

* Should Nest Iterations With At Most 2 Levels, Break Them Up If Nested More For Readability