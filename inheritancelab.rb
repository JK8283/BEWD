class Animal
	attr_accessor :name, :weight

	def initialize(name, weight)
		@name = name
		@weight = weight
	end

	def full_description
		puts "Name: #{@name}, Weight: #{@weight}"
	end
end

class Dog < Animal
	attr_accessor :sound

	def initialize(name, weight, sound)
		super(name, weight)
		@sound = sound
	end

	def full_description
		puts "Name: #{@name}, Weight: #{@weight}, Sound: #{@sound}"
	end
end

class Cat < Animal
	attr_accessor :sound

	def initialize(name, weight, sound)
		super(name, weight)
		@sound = sound
	end

	def full_description
		puts "Name: #{@name}, Weight: #{@weight}, Sound: #{@sound}"
	end
end

class Snake < Animal
	attr_accessor :sound

	def initialize(name, weight, sound)
		super(name, weight)
		@sound = sound
	end

	def full_description
		puts "Name: #{@name}, Weight: #{@weight}, Sound: #{@sound}"
	end
end

animal = Animal.new("Dumbo", "8000 lbs")
puts animal.full_description

flyer = Dog.new("Flyer", "17 lbs", "ruff!!!")
puts flyer.full_description

bojangles = Cat.new("Bojangles", "10 lbs", "meow!!!")
puts bojangles.full_description

slytherin = Snake.new("Slytherin", "5 lbs", "hiss!!!")
puts slytherin.full_description
