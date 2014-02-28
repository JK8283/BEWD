class Employee	

	attr_accessor :first_name, :last_name

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		puts "#{@first_name} #{@last_name}"
	end

end

class Manager < Employee # < (class) denotes inheritance

	attr_accessor :title, :email

	def initialize(first_name, last_name, title, email)
		super(first_name, last_name) # super initializes from parent class
		@title = title
		@email = email
	end

	def full_name
		puts "#{first_name} #{last_name} #{title}"
	end

end

class Executive < Manager

	attr_accessor :twitter_handle

	def initialize(first_name, last_name, title, email, twitter_handle)
		super(first_name, last_name, title, email)
		@twitter_handle = twitter_handle
	end

	def contact
		puts "Email: #{email} Twitter: #{twitter_handle}"
	end	

end

manager = Manager.new("Jane", "Smith", "Boss", "jane@gmail.com")

puts manager.full_name
puts manager.email

executive = Executive.new("John", "Kim", "CEO", "j@j.com", "johniscool")

puts executive.full_name
puts executive.contact


