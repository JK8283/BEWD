puts "What neighborhood do you live in?"
neighborhood = gets.chomp

if neighborhood == "Pacific Heights"
	puts "Wow, you must be rich!"
elsif neighborhood == "The Mission"
	puts "Wow, you must like to hang out with KChan."
elsif neighborhood == "Civic Center"
	puts "Wow, you must be friends with KLee."
elsif neighborhood == "SOMA"
	puts "You live close to a lot of tall buildings."
elsif neighborhood == "SOMA"
	puts "You must like to party with KLee!"
else
	puts "You must live in a neighborhood outside of Pacific Heights, 
	The Mission, Civic Center, The Castro and SOMA."
end