puts "Welcom to secret number!"
puts "Enter your name:"

name = gets.chomp

$guesses_left = 3
$secret_number = 5

def guessing_conditional
	puts "You have #{$guesses_left} guesses left."

	puts "Please make a guess."

	guess = gets.chomp.to_i

	if $secret_number == guess
		puts "You are correct!!!"
		exit
	elsif $secret_number > guess
		puts "Make your next guess higher than #{guess}."
	elsif $secret_number < guess
		puts "Make your next guess lower than #{guess}."
	end

$guesses_left -= 1
end

3.times do
	guessing_conditional
end

puts "GAME OVER!"
