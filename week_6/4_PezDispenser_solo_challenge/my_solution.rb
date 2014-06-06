# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# We need to define the initialize method to get started. Then we need to define an instance variable and set 
# it to pull out the first 12 flavors then shuffle them. WE need a method to tell us the amount of pez_candies
# there are in our dispenser using the .size method. We then need a method to see all of our pez to know what flavors
#  we have available using the .join method. We need a method to add pez and raise an ArgumentError if the dispenser 
#  is full. We need a method to allow us to get one pez to eat using the .pop method.



# 3. Initial Solution

# class PezDispenser
# 	def initialize(flavors)
#  		@pez_candies = flavors.first(12).shuffle
#  	end

#  	def pez_count
#  		@pez_candies.size
#  	end

#  	def see_all_pez
# 		@pez_candies.join(" - ")
#  	end

#  	def add_pez(flavor)
#  		raise ArgumentError.new("Can't add, son. Too many pez already!") if pez_count == 12
# 		@pez_candies.push(flavor) 	
#  	end

#  	def get_pez
#  		@pez_candies.pop
#  	end

# end
 


# 4. Refactored Solution

class PezDispenser
	def initialize(flavors)
 		@pez_candies = flavors.first(12).shuffle
 	end

 	def pez_count
 		@pez_candies.size
 	end

 	def see_all_pez
		@pez_candies.join(" - ")
 	end

 	def add_pez(flavor)
 		raise ArgumentError.new("Can't add, son. Too many pez already!") if pez_count == 12
		@pez_candies.push(flavor) 	
 	end

 	def get_pez
 		@pez_candies.pop
 	end
 	
end
 






# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 
# The user cases made this challenge easier than some of the others, because it guided me into my pseudocode. 
# Who knows? Maybe I am getting better at this? I like going to check out ruby.docs to find any methods that 
# I might need. That is usually one of my first stops now. It really makes things easier. It helped though, that some of these 
# methods were used in earlier challenges, and I had to go look them up for those.
