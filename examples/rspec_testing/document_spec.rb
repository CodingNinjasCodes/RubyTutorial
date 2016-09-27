require 'rspec'
require_relative 'document.rb'

describe Document do
	before :each do
		@title = "Test"
		@author = "Tushar"
		@content = "Ruby is fun"
		@document = Document.new(@author,@title,@content)
		
	end

	it "tests if a document returns a new object" do
		puts "this test was run"
		expect(@document).not_to eq(nil) 
		#document.should_not == nil
	end

	it "words should be 3" do
		expect(@document.word_count).to eq(3)
	end

	it "words should include all the words" do
		expect(@document.words).to include("Ruby")
		expect(@document.words).to include("is")
		expect(@document.words).to include("fun")
	end

end

