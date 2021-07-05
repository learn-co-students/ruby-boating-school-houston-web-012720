require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Ahmed")
student2 = Student.new("Florian")
student3 = Student.new("Sumaya")

inst1 = Instructor.new ("Bilal")
inst2 = Instructor.new ("Stephan")

test1 = BoatingTest.new(student1,"a","passed",inst1)
test2 = BoatingTest.new(student1,"a","fail",inst2)
test1 = BoatingTest.new(student1,"a","fail",inst1)
test2 = BoatingTest.new(student1,"a","fail",inst2)





# binding.pry
 #leave this here to ensure binding.pry isn't the last line

