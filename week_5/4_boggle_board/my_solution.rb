# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [with James Miller].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Part 1: a method that takes a group of coordinates and returns a string of the corresponding 'boggle board' elements
# 	a. define a method called create_word that takes the parameters board, and *coords
# 	b. coords has an undefined number of parameters
# 	c. map those to another array and run coord through each element 
# 	d. set your block of code to join your first parameter and last parameter.



# Initial Solution
# def create_word(board, *coords)
# 	coords.map {|coord| board[coord.first][coord.last]}.join("")
# end

# Refactored Solution
def create_word(board, *coords)
	coords.map {|coord| board[coord.first][coord.last]}.join("")
end

# # DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1],[1,1],[1,2],[0,3]) # => code
puts create_word(boggle_board, [0,1],[0,2],[1,2]) # => rad
puts create_word(boggle_board, [0,0],[1,0],[0,1],[1,2]) # => bird
# Reflection 
# I started to understand what James told me. I had never played boggle board before. This started to make sense
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define a method called row that takes the parameters board and row
# the method will take row and return those values
# the output will be a row 0, 1, 2, or 3
# Initial Solution
# def get_row(row,board)  #  row(x,*y)
# 	board[row]
# 	#row[index]
# 	#row[board]
# end
# # Refactored Solution
def get_row(row,board)  #  row(x,*y)
	board[row]
end

# # DRIVER TESTS GO BELOW THIS LINE
p get_row(1, boggle_board) #=>  ["i", "o", "d", "t"]


# Reflection 
# We changed the name to boggle_board to make it make sense. This test returns the entire row

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Part 3: write a method that takes a column number and returns a new array with all of the items 
# in each sub array at that positon/index
# Initial Solution

 def get_col(col, boggle_board)
	boggle_board.map {|x| x.fetch(col)} # so the .fetch method calls the index of each sub-array.
	
 end



 # Refactored Solution
#clueless

# # DRIVER TESTS GO BELOW THIS LINE
p get_col(0, boggle_board)  #=>  ["r", "o", "c", "a"]    asks for every index 1 sub-index in each index
p get_col(1, boggle_board)
p get_col(2, boggle_board)
p get_col(3, boggle_board) 

# Reflection 
# This was tough. I found out how to use the fetch method with the map method to put the items in a new 
# array and we were good to go.