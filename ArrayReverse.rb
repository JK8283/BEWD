# def reverse(array)
# 	new_array = []
# 	array.each do |x|
# 		new_array.unshift(x)
# 	end
# 	new_array
# end

def reverse(array)
	count = array.count
	counter = 0
	revarray = []

	while counter < count
		revarray.push(array[count-1-counter])
		counter += 1
	end

	revarray

end

array = [1,2,3,4]

print reverse(array)