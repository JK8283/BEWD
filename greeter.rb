def greeter
	puts "What is your name?"
	user_input1 = gets.chomp
	puts "What is your age?"
	user_input2 = gets.chomp.to_i
	puts "Hello #{user_input1}, you are #{user_input2} years old."
end

greeter