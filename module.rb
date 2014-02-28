# similar to a class but can't create instances of it 
# another way to share methods across classes

module MyModule

	def my_method
		puts "Hello World"
	end

end

class MyClass
	include MyModule
end

class NewClass
	include MyModule
end

my_class = MyClass.new
my_class.my_method

n = NewClass.new
n.my_method