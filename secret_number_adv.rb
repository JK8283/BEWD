def intro	
puts "Welcome to the secret number game! Created by John Kim. Type q to quit."
puts "What is your name?"
	name = gets.chomp
	if name != "q"
		puts "Hi #{name}!"
		game1
	else 
		exit
	end	
end

## First guess method.
def game1

tries = 3

while tries > 0
	secret_number = 5
	puts "Guess a number between 1 and 10. You only have #{tries} to guess correctly or you lose!"
	user_guess1 = gets.chomp.to_i
	if user_guess1 == secret_number
		puts "Congratulations! You've guessed correctly and win the game!"
		tries = -1
		exit
	elsif user_guess1 < secret_number
		puts "Oops! Looks like your guess is too low!"
		tries = tries - 1
	elsif user_guess1 > secret_number 
		puts "Oops! Looks like your guess is too high!"
		tries = tries - 1
	else
		puts "Make sure you enter a number between 1 and 10."
	end
end

if tries == 0
	puts "The game is over, the correct answer was #{secret_number}."
	response = "q"
end

end

## Methods always go on top!
intro
