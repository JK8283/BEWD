def multiply
	puts "type your first number?"
	number_1 = gets.chomp.to_i
	puts "type your second number?"
	number_2 = gets.chomp.to_i
	puts "Your answer is #{number_1 * number_2}"
end

multiply
