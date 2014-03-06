puts "Enter a text string:"

string = gets.chomp

if string == string.reverse
	puts "You have entered a palindrome!"
else
	puts "That is not a palindrome."
end