require 'pry'
require_relative 'app/models/boatingtest.rb'
require_relative 'app/models/instructor.rb'
require_relative 'app/models/student.rb'


s1 = Student.new("spongebob")
s2 = Student.new("patrick")
s3 = Student.new("sandy")

i1 = Instructor.new("mrs. puff")

b1 = BoatingTest.new(s1, "reversing", "pass", i1)
b2 = BoatingTest.new(s2, "|| parking", "fail", i1)
b3 = BoatingTest.new(s1, "|| parking", "fail", i1)
b4 = BoatingTest.new(s1, "highway ettiqutte", "fail", i1)



binding.pry
0