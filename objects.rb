# jimmy = {}
# jimmy[:name] = "Jimmy"
# jimmy[:age] = 22
# jimmy[:major] = "Math"
# jimmy[:course] = "Math"
# jimmy[:grade] = "A"

# pepe = {}
# pepe[:name] = "Pepe"
# pepe[:major] = "Music"
# pepe[:course] = "Math"
# pepe[:grade] = "C"

# edward = {}
# edward[:name] = "Edward"
# edward[:major] = "Math"
# edward[:course] = "Math"
# edward[:grade] = "D"

# def grade_status(student)
# 	if student[:grade] == "F"
# 		return "failed"
# 	elsif ["D", "E"].include?(student[:grade]) && student[:major] == student[:course]
# 		return "failed"
# 	else
# 		return "passed"
# 	end
# end

# puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"
# puts "#{pepe[:name]} has #{grade_status(pepe)} #{pepe[:course]}"
# puts "#{edward[:name]} has #{grade_status(edward)} #{edward[:course]}"

class Student
	attr_accessor :name, :major, :course, :grade # accesses both settr & gettr
	
	def initialize(name, major, course, grade)
		@name = name
		@major = major
		@course = course
		@grade = grade
	end

	def grade_status
		if @grade == "F"
			return "failed"
		elsif ["D", "E"].include?(@grade) && @major == @course
			return "failed"
		else
			return "passed"
		end
	end

	# attr_reader :name (just the settr)
	# attr_writer :name (just the gettr)
	
	# (settr)
	# def name
	# 	@name
	# end

	# (gettr)
	# def name=(name)
	# 	@name = name
	# end

end

# jimmy = {}
# jimmy[:name] = "Jimmy"
# jimmy[:age] = 22
# jimmy[:major] = "Math"
# jimmy[:course] = "Math"
# jimmy[:grade] = "A"

jimmy = Student.new("Jimmy", "Math", "Math", "A")
pepe = Student.new("Pepe", "Music", "Math", "C")
edward = Student.new("Edward", "Math", "Math", "D")

puts jimmy.grade_status
puts pepe.grade_status
puts edward.grade_status