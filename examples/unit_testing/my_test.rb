require 'test/unit'
require_relative 'document.rb'

class MyTest < Test::Unit::TestCase
	def setup
		@title = "Test"
		@authur = "Tushar"
		@content = "This is a test document"
		@document = Document.new(@author,@title,@content)
		puts @document.hash
	end

	def test_check_word_count
		
		assert_equal 5, @document.word_count
	end

	def test_check_content
		
		assert_equal @content , @document.content
	end

	def test_raise
		assert_raise {1/0}
	end


	def teardown
		puts "tear down"
	end


end