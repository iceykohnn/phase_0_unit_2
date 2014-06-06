# U2.W6: Drawer Debugger

# I worked on this challenge [ with: James Miller].

# 2. Original Code

class Drawer

	attr_reader :contents    #way to share instance variables using a shortcut (attr_)

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def contents
		@contents = contents
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item  
	end

	def remove_item(item = @contents.pop)
		@contents.delete(item)									
	end

	def dump  
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
attr_reader :type

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware 
		@clean           
	end

end
 	

 silverware_drawer = Drawer.new
 silverware_drawer.add_item(Silverware.new("knife"))  
 silverware_drawer.add_item(Silverware.new("spoon"))
 silverware_drawer.add_item(Silverware.new("fork")) 
 silverware_drawer.view_contents  

 silverware_drawer.remove_item
 silverware_drawer.view_contents  
 sharp_knife = Silverware.new("sharp_knife")


 silverware_drawer.add_item(sharp_knife)

 silverware_drawer.view_contents 

 removed_knife = silverware_drawer.remove_item(sharp_knife)
 silverware_drawer.view_contents 
 removed_knife.eat  
 removed_knife.clean_silverware 

 silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents 

# fork = Silverware.new("fork")
# silverware_drawer.add_item(fork) 
# fork = silverware_drawer.remove_item(fork) 
# fork.eat

#BONUS SECTION
#puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
 knife1 = Silverware.new("knife")
 silverware_drawer = Drawer.new
 silverware_drawer.add_item(knife1) 
 silverware_drawer.add_item(Silverware.new("spoon"))
 silverware_drawer.add_item(Silverware.new("fork")) 
 silverware_drawer.view_contents  #=> The drawer contains -knife -spoon -fork
 silverware_drawer.remove_item
 silverware_drawer.view_contents  #=> The drawer cotains -knife -spoon
 sharp_knife = Silverware.new("sharp_knife")





# 5. Reflection 
#  This challenge was moderately hard, because I had a time understanding what was being required of me.  Once 
# I got some help, it made a lot more sense.  