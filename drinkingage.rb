puts "What is your age?"

age = gets.chomp.to_i

if age > 21
	puts "YAY! You can have a beer."
elsif age == 21
	puts "Congrats! Let's get wasted."
else
	puts "Sorry, you're too young."
end