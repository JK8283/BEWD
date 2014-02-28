#Apartment class.
class Movie

	attr_accessor :title, :year, :actors
	
	def initialize(title, year)
		@title = title
		@year = year
		@actors = nil
	end 

end
