def intro	
puts "Welcome to the secret number game! Created by John Kim. Type q to quit."
puts "What is your name?"
	name = gets.chomp
	if name != "q"
		puts "Hi #{name}!"
		game1
	else response = name
	end	
end

## First guess method.
def game1
	secret_number = 5
	puts "Guess a number between 1 and 10. You only have 3 tries to guess correctly or you lose!"
	user_guess1 = gets.chomp.to_i
	if user_guess1 == secret_number
		puts "Congratulations! You've guessed correctly and win the game!"
	elsif user_guess1 < secret_number
		puts "Oops! Looks like your guess is too low!"
			game2 
	elsif user_guess1 > secret_number 
		puts "Oops! Looks like your guess is too high!"
			game2
	else
		puts "Make sure you enter a number between 1 and 10."
			game1
	end
end

## Second guess method.
def game2
	secret_number = 5
	puts "Guess a number between 1 and 10. You only have 2 tries to guess correctly or you lose!"
	user_guess2 = gets.chomp.to_i
	if user_guess2 == secret_number
		puts "Congratulations! You've guessed correctly and win the game!"
	elsif user_guess2 < secret_number
		puts "Oops! Looks like your guess is too low!"
			game3 
	elsif user_guess2 > secret_number 
		puts "Oops! Looks like your guess is too high!"
			game3
	else
		puts "Make sure you enter a number between 1 and 10."
			game2
	end
end

## Third guess method.
def game3
	secret_number = 5
	puts "Guess a number between 1 and 10. You only have 1 more try to guess correctly or you lose!"
	user_guess3 = gets.chomp.to_i
	if user_guess3 == secret_number
		puts "Congratulations! You've guessed correctly and win the game!"
	elsif user_guess3 < secret_number
		puts "Oops! Looks like your guess is too low! You've run out of tries - the correct answer was #{secret_number}."
	elsif user_guess3 > secret_number 
		puts "Oops! Looks like your guess is too high! You've run out of tries - the correct answer was #{secret_number}."
	else
		puts "Make sure you enter a number between 1 and 10."
		game3
	end
end

## Methods always go on top!
response = intro
while response != "q"
	response = intro
end
