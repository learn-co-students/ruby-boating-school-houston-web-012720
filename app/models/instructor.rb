class Instructor
    @@all = []
def initialize(name)
@name = name 
@@all << self 
end
def pass_student(student, test_name)
test = BoatingTest.all.find{|test| test.student = student && test.test_name = test_name}
test.status = "Passed"
end
def fail_student(student,test_name)
test = BoatingTest.all.find{|test| test.student = student && test.test_name = test_name}
test.status = "Failed"
if test == nil 
   new_test = BoatingTest.new(student, test_name, self )
   new_test.status = "Failed"
end
end
end
