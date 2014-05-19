# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
 
# What is the output? (i.e. What should the code return?)
 
# What are the steps needed to solve the problem?

# The input will be the arguments that I pass when I call the method.
# The output will be the total of the numbers that I passed into the method
# I will need to define the methods, include the proper brackets and put the 
# variables in the proper place.  I can't forget to put the ".capitalize method", 
# and to make it have the period at the end. 
# 

# 	define method called total with brackets for args ([an array])
#   	make a variable called array_total and set it to 0
#  		use the each method to iterate each element (i) and add it to array_total
#   	return array_total for the total
# 	end
# 2. Initial Solution

# def total(array)
#   array_total = 0
#   array.each {|i| array_total += i}
#   array_total
# end

# def sentence_maker(array)
#   array.join(" ").capitalize + "."
# end


# 3. Refactored Solution

def total(array)
  array_total = 0
  array.each {|i| array_total += i}
  array_total
end

def sentence_maker(array)
  array.join(" ").capitalize + "."
end


# 4. Reflection 
#  	This was pretty tough, not the exercise itself, that was easy enough, but running the tests. 
#  	I had trouble installing rspec, because I didn't have write permissions. So Marek helped me 
#   install rvm.  Then we had to update my version of ruby and set it to default so that I could even
#   run the rspec.  After all that, I was ok, but it was pretty frustrating figuring it all out. 