:Objects

1. Ruby Objects
# Everything is an object! Everyone inherets from Objects "primitive" class. 

# Need to override the == function of your own functions, also a good idea to override to_s function of objects to better represent the objects. (It is possible to override most ruby methods). Usualy use == to check if value is the same, eq? if type and value are the same. ie 25.0 not eq? 25

# Objects are only equal if they point to the same location in memory. Not all objects are equal just because their values are the same. 

2. To Checkout An Object
p nil # nil p uses the #inspect function and returns the
      # "inner-working" of objects

puts nil # "" puts uses the to_string function and returns just what you want people to see

3. Useful Object Methods
"".nil? # False An empty string is still a string, only nil can be truly nil

[].class # Array Array.new()'s class being Array is not a surprise

{}.is_a?(Hash) # A hash is a hash(bown)?

"a string is a string" == "a string is a string" # A string is a string

4 <=> 5 # -1 Spaceships are intelligent and orders things for you
