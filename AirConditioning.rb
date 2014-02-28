puts "What is the current temperature?"
temperature = gets.chomp.to_i

puts "Is the A/C functional? Type yes or no."
acstatus = gets.chomp

puts "What temperature do you wish it was?"
wishtemp = gets.chomp.to_i

if acstatus == "yes" && temperature > wishtemp
	puts "Turn on the A/C Please"
elsif acstatus == "no" && temperature > wishtemp
	puts "Fix the A/C now! It's hot!"
elsif acstatus == "no" && temperature < wishtemp
	puts "Fix the A/C whenever you have a chance... Its cool..."
else
	puts "nothing for you to do here!"
end
