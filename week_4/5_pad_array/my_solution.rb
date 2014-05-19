# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Marek Pycszkowki].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
# 	the input for this particular situation is supplied by the code.  The output is going to take the information this method supplies 
#  	and put it into the code when it is called. 
#  	The steps we need are to setup this method as a method, create a varible to catch our results from subtracting the number provided
#  	from the number of indexes in the array. We then use that number to determine how many times to push nil to the back of the array


# 2. Initial Solution
class Array
  def pad(num,option=nil)
  space_filler=self.length-num
  space_filler.times do
    self<<option
end
end
end
  self

puts [1,2].pad(5).inspect





# 3. Refactored Solution

class Array
  def pad(num,option=nil)
  space_filler=self.length-num
  space_filler.times do
    self<<option
end
end
end

# 4. Reflection 

# This challenge called on me to figure out how to apply nil to the array, to figure out how many times 
# that I would have to do that, and to put all of that into a new method ourselves. When we broke it up into 
# its different parts, we got it nailed.  