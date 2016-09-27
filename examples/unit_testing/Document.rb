class Document
	def initialize (author,title,content)
		@author = author
		@title = title
		@content = content
	end

	def author
		@author
	end

	def title
		@title
	end


	def content
		@content
	end

	def words
		@content.split()
	end

	def word_count
		words.length
	end


end



