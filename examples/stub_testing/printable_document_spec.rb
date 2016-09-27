require 'rspec'
require_relative 'printable_document.rb'

describe PrintableDocument do

	before :each do 
		@author = "Tushar Tuteja"
		@title = "Test"
		@content = "Ruby is getting more fun"
	    @printable_document = PrintableDocument.new(@author,@title,@content)

	end

	it "document should be created" do
		expect(@printable_document).not_to eq(nil)
		puts "printable document"
	end
	
	it "prints the command" do
		printer = Object.new
		allow(printer).to receive_messages(:available? => true, :render => nil)
		expect( @printable_document.print(  printer ) ).to eq("Done")
	end


end

