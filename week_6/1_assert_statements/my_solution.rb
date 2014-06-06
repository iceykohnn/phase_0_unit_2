# U2.W6: Testing Assert Statements

# I worked on this challenge [with James Miller ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Well, prior to the code running, we first established the vairable 'name'.  
# Also notice that there is a yield statement in the assert method.  Yield will go
# to the first block provided.  When we run the code, the unless statement checks
# to see if the result is false.  If the result in the block is false, the method will 
# raise an "Assertion failed!" string.  Because bettysue test isn't false, it goes straight 
# to the yield statement (returns nil).  However, because "billybob" is false, our raise
# statement triggers our "Assertion failed!" string.

# 1. set variable to "bettysue"
# 2. call the assert method and set block name == "bettysue"
# 3. if "bettysue" block of code is false, raise alert
# 4. if "bettysue" block of code is true, run the block

# 3. Copy your selected challenge here
class GuessingGame
  def initialize(answer)  
    @answer = answer
    
  end

  def guess(guess)
    @guess = guess         
  if guess > @answer     
       :high
    elsif guess < @answer
       :low
    else 
       :correct
    end
  end
    
  
  def solved?                    
    if @guess == @answer
       true
    else false
  end
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

# game = GuessingGame.new(10)
#  game.solved? # => false
#  game.guess(5) # => :low
#  game.guess(20) # => :high
#  game.solved? # => false
#  game.guess(10) # => :correct

game = GuessingGame.new(234)     
 game.solved? #=> false
 game.guess(100) # => :low
 game.solved?# => false
 game.guess(200)# => :low
 game.solved?# => false
 game.guess(300)# => :high
 game.solved?# => false
 game.guess(250)# => :high
 game.solved?# => false
 game.guess(234)# => :correct
 game.solved? #=> true
 game.guess(235) # => :high
 game.solved? # => false   



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield 
end

#p game = GuessingGame.new(235) 

p assert {game.guess(234) == :correct }   # => nil
#p assert {game.guess(235) == :correct }  # => Assertion Failed
p assert {game.guess(200) == :low } # => nil
p assert {game.guess(300) == :high }  # => nil                             
p assert {game.solved? == false }    # => nil
p assert {game.guess(235) == :correct }  # => Assertion Failed




# 5. Reflection
This challenge was eeasier to do once we understood what we were doing. I'll be honest, many of 
  the challenges have been more difficult for me than most, because I never played the games before, 
  and didn't have a reference that others might have had. 