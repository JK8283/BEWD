#Building Class
class Building

	attr_accessor :building_name, :building_address, :apartments

	def initialize (building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		apartments.each do |unit|
		puts ""	
		puts "Apartment number: #{unit.name}"
		puts "Apartment size: #{unit.apt_sqft}"
		puts "Bedrooms: #{unit.apt_bedrooms}"
		puts "Bathrooms: #{unit.apt_bathrooms}"
		puts "Rent: $#{unit.rent}"
		puts "Renter: #{unit.renter.name}"
		puts "Credit Score: #{unit.renter.credit_score}"
		puts "Gender: #{unit.renter.gender}"
		end


	end

end
