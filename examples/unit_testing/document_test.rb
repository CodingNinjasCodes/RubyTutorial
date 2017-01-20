require 'test/unit'
require_relative 'document.rb'
class DocumentTest <  Test::Unit::TestCase
	def setup
		@title = "Test"
		@authur = "Tushar"
		@content = "This is a test document"
		
		@document = Document.new(@authur,@title,@content)
		puts "inside setup method"
	end



	def test_doc_creation
		assert_not_equal @document,nil
	end
	def test_doc_author
		assert_equal @authur,@document.author
	end
	def test_doc_content
		assert_equal @content,@document.content
	end
	



	def test_doc_title
		assert_equal @title, @document.title
	end

	def teardown
		puts "Inside Tear Down Method"
	end

end

