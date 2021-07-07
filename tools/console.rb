require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Spongebob")
s2 = Student.new("Patrick")

i1 = Instructor.new("Mrs. Puff")

test1 = BoatingTest.new(s1, "Test 1", "Failed", i1)
test2 = BoatingTest.new(s2, "Test 2", "Failed", i1)


binding.pry
0
