# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [with james Miller].


# 2. Pseudocode
# A. create a BoggleBoard Class
# B. make boggle_board it's own object and have dice_grid called as an argument.
# C. initialize class Boggleboard
# D. define a method callled board
# E. set up instance variables
# D. How does the boggle_board object hold the dice_grid?


# 3. Initial Solution
# class BoggleBoard
# 	def initialize(board)
# 		@board = board       #board refers to the dice_grid setup
# 	end

# 	def create_word(board, *coords)
# 		coords.map {|coord| @board[coord.first][coord.last]}.join("")
							# .first and .last refer to the arguments called, not to do with dice_grid
# 	end

# 	def get_row(row,board)  #  row(x,*y)
# 		@board[row]
# 	end

# 	def get_col(col, board)
# 		@board.map {|x| x.fetch(col)} # IF you have a NESTED ARRAY the .fetch method calls the index of each sub-array.
# 		#for example.  if you fetch (1) tied to a loop method(.map or .each) it will pull all the indices of each sub-array.
# 	end

# end
 
 
# dice_grid = [["b", "r", "a", "e"],
# 			 ["i", "o", "d", "t"],
# 			 ["e", "c", "l", "r"],
# 			 ["t", "a", "k", "e"]]
 
# p boggle_board = BoggleBoard.new(dice_grid)  # so I should be able to set up another dice grid in the future.

# ORIGINAL ERROR: boggle_board.create_word(board, [2,1][1,1][1,2][0,3]) 
# ORIGINAL ERROR: puts create_word(boggle_board, [2,1],[1,1],[1,2],[0,3]) # => returns "code" 
#test for the create_word method (working properly)
# p boggle_board.create_word(dice_grid, [1,2],[1,1],[2,1],[3,2]) # =>  returns "dock"
# p boggle_board.create_word(dice_grid, [2,1],[1,1],[1,2],[0,3]) # => returns "code" 
# p boggle_board.create_word(dice_grid, [3,0],[3,1],[3,2],[3,3]) # => returns "take"
# p boggle_board.create_word(dice_grid, [1,3],[2,3],[3,3],[3,2]) # => returns "trek"
# p boggle_board.create_word(dice_grid, [0,0],[0,1],[1,0],[2,1],[3,2]) # => returns "brick"
# #test for the get_row method (working properly)
# p boggle_board.get_row(0,dice_grid)# => b r a e
# p boggle_board.get_row(1,dice_grid)#=>  ["i", "o", "d", "t"]
# p boggle_board.get_row(2,dice_grid)# => e c l r
# p boggle_board.get_row(3,dice_grid)# => t a k e
# #test for the get_col method (  )
# p boggle_board.get_col(0,dice_grid)# => ["b","i","e","t"]
# p boggle_board.get_col(1,dice_grid)# => r o c a
# p boggle_board.get_col(2,dice_grid)# => a d l k
# p boggle_board.get_col(3,dice_grid)# => e t r e

# 4. Refactored Solution

class BoggleBoard
	def initialize(board)
		@board = board       #board refers to the dice_grid setup
	end

	def create_word(*coords)
		coords.map {|coord| @board[coord.first][coord.last]}.join("")
	end

	def get_row(row)  #  row(x,*y)
		@board[row]
	end

	def get_col(col)
		@board.map {|x| x.fetch(col)} # IF you have a NESTED ARRAY the .fetch method calls the index of each sub-array.
		#for example.  if you fetch (1) tied to a loop method(.map or .each) it will pull all the indices of each sub-array.
	end

end
 
 
dice_grid = [["b", "r", "a", "e"],
			 ["i", "o", "d", "t"],
			 ["e", "c", "l", "r"],
			 ["t", "a", "k", "e"]]
 
p boggle_board = BoggleBoard.new(dice_grid)  # so I should be able to set up another dice grid in the future.

# ORIGINAL ERROR: boggle_board.create_word(board, [2,1][1,1][1,2][0,3]) 
# ORIGINAL ERROR: puts create_word(boggle_board, [2,1],[1,1],[1,2],[0,3]) # => returns "code" 
#test for the create_word method (working properly)
p boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) # =>  returns "dock"
p boggle_board.create_word([2,1],[1,1],[1,2],[0,3]) # => returns "code" 
p boggle_board.create_word([3,0],[3,1],[3,2],[3,3]) # => returns "take"
p boggle_board.create_word([1,3],[2,3],[3,3],[3,2]) # => returns "trek"
p boggle_board.create_word([0,0],[0,1],[1,0],[2,1],[3,2]) # => returns "brick"
# #test for the get_row method (working properly)
p boggle_board.get_row(0)# => b r a e
p boggle_board.get_row(1)#=>  ["i", "o", "d", "t"]
p boggle_board.get_row(2)# => e c l r
p boggle_board.get_row(3)# => t a k e
# #test for the get_col method (  )
p boggle_board.get_col(0)# => ["b","i","e","t"]
p boggle_board.get_col(1)# => r o c a
p boggle_board.get_col(2)# => a d l k
p boggle_board.get_col(3)# => e t r e




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
# puts dice_grid[0][1] == "r" # returns boggle_board[row_number][column_number]  true
# puts dice_grid[2][1] == "c" #=> should be true
# puts dice_grid[3][3] == "e" #=> should be true
# puts dice_grid[2][3] == "x" #=> should be false
# puts dice_grid[3][2] == "k" # => should be true

# def assert
#   raise "Assertion failed!" unless yield 
# end
# p assert { dice_grid[0][1] == "r" }# => nil
# p assert { dice_grid[2][1] == "c" }#=> nil
# p assert { dice_grid[3][3] == "e" }#=> nil
# p assert { dice_grid[2][3] == "x" }#=> Assertion failed!  stop
# p assert { dice_grid[3][2] == "k" }# => 

# 5. Reflection 
# I worked on this one with James.  We had some trouble in the beginning figuring out 
# what the challenge was saying. We spent some time looking at video tutorials on 
# lynda.com, and going back over some of the previous challenges to clear things up.
