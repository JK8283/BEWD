# menu_items = {:Burger => 10, :Coke => 2, :Salad => 12}

# menu_items.each do |key, value|
# 	puts "#{key}: $#{value}"
# end


restaurants = 
{:nicks => {:Taco => 6, :Nachos => 7, :Salad => 9}, 
:dojo => {:Chicken => 5, :Ramen => 10, :Egg => 2}, 
:underground => {:Pork => 4, :Ramen => 12, :Coke => 2}}

restaurants.each do |restaurant, menu|
	if menu.keys.include?(:Ramen)
		puts "At #{restaurant}, ramen sells for $#{menu[:Ramen]}."
	end
end
