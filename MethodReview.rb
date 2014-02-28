# Create a method that takes an argument or an integer
# Multiply argument by 3

def multiply(number)
	puts number * 3
end

# def multiply(number1, number2) # multiply(3,5) returns 15
# 	puts number1 * number2
# end

# puts "Type in a number:"
# number = gets.chomp.to_i

# multiply(number)

# Write a method that takes in a name, which says 


def hello(name)
	if name == "John"
		"Hello #{name}!"
	elsif name == "Kevin"
		"Hey there #{name}!"
	else
		"I don't know you!"
	end
end

puts "Type in your name:"
name = gets.chomp.to_s
puts hello(name)