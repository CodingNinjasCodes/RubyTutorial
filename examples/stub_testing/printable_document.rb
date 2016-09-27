require_relative 'document.rb'
class PrintableDocument < Document
	def print(printer)
		return "Printer Unavailable" unless printer.available?
		printer.render(@title)
		printer.render(@author)
		printer.render(@content)
		return "Done"
	end

end

