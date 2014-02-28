class Apartment

	attr_accessor :price, :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize(price, sqft, num_bedrooms, num_bathrooms)
		@price = price
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
		@renters = []
	end 

	def is_occupied?
		#!@renters.empty?
		@renters.any?
	end

end

my_apartment = Apartment.new(1500, 900, 2, 2)
my_apartment.renters.push("Jackie", "Sarah")

if my_apartment.is_occupied?
	puts "This apartment is not for rent."
else
	puts "This apartment is for rent, ask your broker for more details."
end