require 'test/unit'
require_relative 'printable_document.rb'

class PrintableDocumentTest < Test::Unit::TestCase
	def setup
		@author = "Tushar Tuteja"
		@title = "Test"
		@content = "Ruby is getting more fun"
	    @printable_document = PrintableDocument.new(@author,@title,@content)
	end


	def test_print
		my_printer = Object.new
		class << my_printer
			def available?
				true
			end

			def render content
				nil
			end

		end

		assert_equal (@printable_document.print(my_printer)),"Done"		
	end


end