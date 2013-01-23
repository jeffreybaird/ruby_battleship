class Player

	attr_accessor :name, :ships_left

	def initialize(name)
		@name = name
		@board = Board.new
		@carrier = Ship.new(:carrier)
		@battleship = Ship.new(:battleship)
		@destroyer = Ship.new(:destroyer)
		@submarine = Ship.new(:submarine)
		@patrol = Ship.new(:patrol)
		@ships_left = 5
	end

	def to_s
		@name
	end

end