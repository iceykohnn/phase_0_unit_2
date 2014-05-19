# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge  with: Marek Pyczkowski

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# I need to def get_grade(array)
# I need to set up a variable that accepts scores i.e. scores
# I need to set up a variable that averages scores
# I need if then statements that make a range put out a certain grade

# 2. Initial Solution

# def get_grade(array)
# 	sum=array.inject(0){|element,n| element + n}
# 	average=sum/array.length
# 	if average>=90 
# 		"A"
# 	elsif average>=80
# 		"B"
# 	elsif average>=70
# 		"C"
# 	elsif average>=60
# 		"D"
# 	else average<60
# 		"F"
# 	end
			
		


# 3. Refactored Solution
def get_grade(array)
	sum=array.inject{|memo,n| memo + n}
	average=sum/array.length
	if average>=90 
		"A"
	elsif average>=80
		"B"
	elsif average>=70
		"C"
	elsif average>=60
		"D"
	else average<60
		"F"
	end
end

# 4. Reflection 
# Ok, I found this one to be easier if I used the inject method. The inject method is a premade method available 
# that acts as an accumulator. It takes the first value and adds it to the next value and stores the total in memo
# and adds the next one to it. Everything after that was easy, I just needed to set up the if, then statements to 
# turn the averages into grades.