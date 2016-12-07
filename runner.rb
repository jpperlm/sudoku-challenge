require_relative 'sudoku'
require 'benchmark'
# The sudoku puzzles that your program will solve can be found
# in the sudoku_puzzles.txt file.
#
# Currently, Line 18 defines the variable board_string to equal
# the first puzzle (i.e., the first line in the .txt file).
# After your program can solve this first puzzle, edit
# the code below, so that the program tries to solve
# all of the puzzles.
#
# Remember, the file has newline characters at the end of each line,
# so we call String#chomp to remove them.

# File.readlines('sudoku_puzzles.txt').each do |board_string|
File.readlines('hardestsud.txt').each do |board_string|
start_time = Time.now
  solved_board = solve(board_string.chomp)
end_time = Time.now

real_time = end_time-start_time

  if solved?(solved_board)
    puts "The board was solved in #{real_time} seconds!!!"
    x = pretty_board(solved_board)
    x.each do |val|
      p val
    end

  else
    puts "The board wasn't solved :("
  end
end

