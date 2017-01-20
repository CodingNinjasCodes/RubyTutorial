class Board
	def initialize size
		@board = []
		for i in 0..size do
			temp = []
			temp[size-1] = nil
			@board[i] = temp
		end
	end

	def print_board
		puts ""
		@board.each do |row|
		    print_row row
		end
	end

	def add_element element, x, y
		unless @board[x-1][y-1]
			@board[x-1][y-1] = element
		else
			raise Exception.new("Element Already Taken")
		end

	end

	def add_x x,y
		add_element 'X', x, y
	end

	def add_o x,y
		add_element 'O', x, y
	end

	
	def is_win
	end

	def is_space

	end


	private
	def print_row row
		first = true
		row.each do |item|
			print_item item, first
			first = !first if first
		end
		puts ""
	end

	def print_item item, first
		item_str = ""		
		if first
			item_str = item_str + "|"
		end
		if item
			item_str = item_str + "#{item}|"
		else
			item_str = item_str + " |"
		end
		print item_str
	end
end
