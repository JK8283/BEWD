#Apartment class.
class Apartment

	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :rent

	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
		@renter = []
		@rent = 0
	end 

	# def is_occupied?
	# 	#!@renters.empty?
	# 	@renters.any?
	# end

end

# my_apartment = Apartment.new(1500, 900, 2, 2)
# my_apartment.renters.push("Jackie", "Sarah")

# if my_apartment.is_occupied?
# 	puts "This apartment is not for rent."
# else
# 	puts "This apartment is for rent, ask your broker for more details."
# end