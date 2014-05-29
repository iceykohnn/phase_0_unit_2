# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode
# create a new die class
# it takes an array of strings as its Input
# when Die.roll is called
# use sample to return one of the strings
# if Die.new is passed an empty array
# then create an ArgumentError
# # Input:
# Output:
# Steps:


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	@labels = labels
#   	if labels == []
#   		raise ArgumentError.new("need labels")
#   	end
#   end

#   def sides
#   	@labels.length
#   end

#   def roll
#   	@labels.sample  #how do you select a random string?
#   end
# end

# die = Die.new(['A','B','C','D','E','F'])
# die.sides #=> still returns the number of sides, in this class 6
# die.roll # => returns one of ['A','B','C','D','E','F'] randomly


# 4. Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels == []
  		raise ArgumentError.new("need labels")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample  
  end
  
end


# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A','B','C','D','E','F'])

p die.sides 
p die.roll
die.roll == ('A' || 'B' || 'C' || 'D' || 'E' || 'F')
   #THIS GOT SOME WEIRD RESULTS.  SOMETIMES TRUE, SOMETIMES FALSE.
   #I thought I would try something on the fly.

die_deux = Die.new (%w[H I J K L M N O P])
p die_deux.sides
p die_deux.roll
# 5. Reflection
# Working on this with James, I was able to get it done. 