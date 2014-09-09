:Methods

test_array_cat = ['cat', 'does not', 'care']
test_array_dog = ['dog', 'says', 'bark']

1. Implicit Returns 

def explicit_return(array)  
  return "Dogs are amazing, aren't they?" if array.first == 'dog'
  array.join(' ')
end

# If test_array_dog is passed in the return value is explicitly defined. Else the end result of array.join(' ') is implicitly returned.

2. Side-Effects

def add_excitment(array)
  array.push "!!!"
end

# The add_excitment function is used for it's return value (the added excitment)

def what_animal(array)
  print "the array is about a " + array.first.to_s
end

# What_animal doesn't do anything to the array nor does it return anything interesting. We use it for its side-effect of letting us know what it is. 

3. Good Method Guideline
  
* Can Explain What It Does In A Sentence

* Has A Descriptive Name (That Is Hopefully Short)

* Is About < 10 Lines Long (Break Up Longer Methods For Readability)