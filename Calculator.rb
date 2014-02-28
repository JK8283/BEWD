# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
	puts "basic_calc or advanced_calc? type q to quit"
	calctype = gets.chomp
	if calctype == "basic_calc"
		basic_calc
	elsif calctype == "advanced_calc"
		advanced_calc
	elsif calctype == "q"
		response = "q"
	end	
end

 
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
	operator = gets.chomp
	if operator != "a" && operator != "s" && operator != "m" && operator !="d"
		puts "Please enter a valid operator."
		basic_calc
	end

	puts "What is the first number?"
	input1 = gets.chomp.to_i
	puts "What is the second number?"
	input2 = gets.chomp.to_i

	if operator == "a"
		puts input1 + input2
	elsif operator == "s"
		puts input1 - input2
	elsif operator == "m"
		puts input1 * input2
	elsif operator == "d"
		puts input1 / input2
	else
		puts "enter either a, s, m or d"
	end

end
 
def advanced_calc
print "(p)ower, (s)qrt: "
	operator = gets.chomp
	
	if operator == "p"
		puts "What is the first number?"
		input1 = gets.chomp.to_i
		puts "What is the second number?"
		input2 = gets.chomp.to_i
		puts input1 ** input2
	elsif operator == "s"
		puts "What number do you want to get the square root of?"
		input1 = gets.chomp.to_i
		puts input1 ** 0.5
	else
		puts "Please enter a valid operator."
		advanced_calc
	end

end
 
 
response = menu
 
# This process should continue until the user selects a quit option from the menu
while response != 'q'
	response = menu
end