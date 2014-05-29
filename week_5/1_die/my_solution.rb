# U2.W5: Die Class 1: Numeric

# I worked on this challenge [ with: James Miller ].

# 2. Pseudocode

# Input: number of sides to a die
# Output: random number
# Steps: 1)create a new class called die, 2)create a method and initialize it 3) create the @sides variable and set it
# equal to sides 4) create and/or raise an 'Argument Error' for sides less than one 6) return a random number if die is 
# rolled


# 3. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if sides < 1 
#     	raise ArgumentError.new("that will not work, homie")
#     end
#   end
  
#   def sides
#     @sides
#   end
  
#   def roll
#     rand(1..@sides)
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1 
    	raise ArgumentError.new("that will not work, homie")
    end
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(1..@sides)
  end
end

die = Die.new(6)
 die.sides #=> 6
 die.roll



# 1. DRIVER TESTS GO BELOW THIS LINE

p die.roll
p die.sides
p die.roll == 1
p die.roll == 2
p die.roll == 3
p die.roll == 4
p die.roll == 5
p die.roll == 6




# 5. Reflection 
# this wasn't too difficult with a little help from James. He helped me understand 
# what this challenge was asking of me.