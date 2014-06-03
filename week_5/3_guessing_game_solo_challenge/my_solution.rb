# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#   end
#    # Make sure you define the other required methods, too
#   def guess(guess)
#   	if guess > answer
#   		:high
#   	elsif guess < answer
#   		:low
#   	else guess = answer
#   		:correct
#   end
  
#   def solved?
#   	if @guess == @answer 
#   		true
#   	else 
#   		false
#   end
 
# end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end
   # Make sure you define the other required methods, too
  def guess(guess)
  	if guess > answer
  		:high
  	elsif guess < answer
  		:low
  	else guess = answer
  		:correct
  end
  
  def solved?
  	if @guess == @answer 
  		true
  	else 
  		false
  end
 
end




# 1. DRIVER TESTS GO BELOW THIS LINE
game= GuessingGame.new(rand(100))
last_try =nil
last_actual =nil

until game.solved?
	puts "Nope! You picked (#{last_try}), and it was (#{last_actual})!"
	puts ""	
end

puts "Try your luck and guess the number that I am thinking:  "
last_try = gets.chomp.to_i
last_actual = game.guess(last_try)
end

puts "#{last_try} was it! Noice!"
end
# 5. Reflection 
#This solo challenge wasn't that hard, but I couldn't get it to completly run without any errors. i had some syntax error in my test code. 