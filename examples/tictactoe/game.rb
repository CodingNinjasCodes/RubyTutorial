require_relative 'board.rb'

class Game
	def initialize size
		@size = size
		@board = Board.new size
		@current_move = true
	end


	def print_game
		@board.print_board
		puts "#{current_move} turn"
		puts "Please enter row, column to make next move "
	end


	def current_move
		@current_move ? 'X' : 'O'
	end

	def is_active
		true
	end

	def next_move x,y
		begin
			@current_move ? @board.add_x(x,y) : @board.add_o(x,y)
			@current_move = !@current_move
		rescue Exception
			raise Exception.new "Element Already Taken"
		end

		
	end


end


game = Game.new 5
game.print_game
game.next_move 2,3
game.print_game
game.next_move 3,4

begin 
game.next_move 3,4
rescue Exception
	puts "there is an Exception"
end

game.print_game
game.next_move 4,5
game.print_game
