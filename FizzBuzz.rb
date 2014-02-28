# For a range of numbers from 1 to 100
# If the number is divisible by 3 print fizz
# If the number is divisible by 5 print buzz
# If the number is divisible by 3 and 5 print fizzbuzz
# Otherwise print he number
# hint: a range looks like this (1..4), http://www.ruby-doc.org/core-2.1.1/Range.html
# hint: play with the modulo operator in your irb console %http://www.tutorialspoint.com/ruby/ruby_operators.htm

counter = 1

# number = 1..100.to_a
# number.each do |number|

while counter <= 100
	if counter % 3 == 0 && counter % 5 == 0
		puts "fizzbuzz"
	elsif counter % 3 == 0 && counter % 5 != 0
		puts "fizz"
	elsif counter % 3 != 0 && counter % 5 == 0
		puts "buzz"
	else
		puts counter
	end

	counter += 1
end
