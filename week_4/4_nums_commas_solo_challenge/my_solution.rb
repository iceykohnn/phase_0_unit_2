# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#  	The input is going to be a number, num, supplied by the user.  The output should be the numbers input, but separated 
#  	by commas.  We need to set up an array, so that we can do things with the numbers. Then process those numbers so that every three
#  	integers we place a comma behind it. 

# 2. Initial Solution
# def seperate_comma(num)
# 	num_to_array=num.to_s.split("").reverse   
# 	final_array=[]
# 	num_to_array.each_slice(3) {|sub_array| final_array <<(sub_array.join << ",")}

# final_string = final_array.each{|sub_array| sub_array}.join.reverse
# final_string=final_string[1..-1]



# end




# 3. Refactored Solution
def seperate_comma(num)
	num_to_array=num.to_s.split("").reverse   
	final_array=[]
	num_to_array.each_slice(3) {|sub_array| final_array <<(sub_array.join << ",")}

final_string = final_array.each{|sub_array| sub_array}.join.reverse
final_string=final_string[1..-1]



end
puts seperate_comma(6231971)

# 4. Reflection 
# This challenge was a doozy. I wasn't sure how I was going to get it to place the commas. I looked in irb alot to get it to work.
# What I ended up doing was creating an array with the user input using the split method at each keystroke. Then I reversed that
# array. I'll explain more about that in a sec. Then I created a variable to collect results called final_array. Using the each_slice
# method, I made it iterate three integers and then push a comma on it. So every three numbers it places a comma behind them. I 
# then reversed that. So the numbers are in the correct order, but with commas in front of them. i then declared the final string to
# be equal to the number starting from the 1 index. 