# Create a hash with names as key, phone #'s as value
# Find your phone number in hash
# Iterate through hash and print each name and phone number

hash = { "John" => 8473091626, "Rachel" => 8472870370, "Mom" => 8474284776}

puts hash["John"]

hash.each do |name, number|
	puts "#{name}: #{number}"
end