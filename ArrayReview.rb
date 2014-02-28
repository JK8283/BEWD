# Creat an array of names
# Iterate through the array and print off 'Hello name'


array = ["John", "KChan", "KLee"]

array.each do |name|
	puts "Hello #{name}!"
end

puts array[0] # prints first element of the array

puts array[5].inspect # returns nil (no 6th element)

array.push("Sally") # adds "Sally onto the array"
array << "Sally" # same as .push

array.pop # removes last element of the array
array.shift # removes first element of the array