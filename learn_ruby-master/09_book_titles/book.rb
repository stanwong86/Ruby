class Book
	attr_accessor :title

	def initialize
	end

	def title=(title)
		articles = ['the','a','an']
		conjunctions = ['and']
		prepositions = ['in','of']

		books = title.split(" ")
		books.map{|book| book.capitalize! unless articles.include?(book) || conjunctions.include?(book) || prepositions.include?(book) }
		books[0].capitalize!
		@title = books.join(" ")
	end
end