require_relative 'board'
require_relative 'ship'

class Player

	attr_accessor :name, :ships_left
	attr_reader :board, :target_board, :carrier, :battleship, :destroyer, :submarine, :patrol

	def initialize(name)
		@name = name
		@board = Board.new
		@target_board = Board.new
		@carrier = Ship.new(:carrier)
		@battleship = Ship.new(:battleship)
		@destroyer = Ship.new(:destroyer)
		@submarine = Ship.new(:submarine)
		@patrol = Ship.new(:patrol)
		@ships_left = Board::NUM_SHIPS
	end

	def to_s
		@name
	end

	#print side-by-side ship status and shpts taken boards
	def print_boards
		puts "      SHIP STATUS                   SHOTS TAKEN"
		puts "  1 2 3 4 5 6 7 8 9 10          1 2 3 4 5 6 7 8 9 10"
		row_letter = ('A'..'Z').to_a
		row_number = 0
		@board.grid.each do |row1|
			print row_letter[row_number] + ' '
			row1.each {|cell| print cell.to_s + ' '}
			print "        "
			print row_letter[row_number] + ' '
			@target_board.grid[row_number].each {|cell| print cell.to_s + ' '}
			print "\n"
			row_number += 1
		end
	end

end
