require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new('Sponge')
s2 = Student.new('Patrick')

t1 = Instructor.new('krabs')
t2 = Instructor.new('Squid')

b1 = BoatingTest.new(s1, t1, 'reverse', 'fail')
b2 = BoatingTest.new(s1, t2, 'turning', 'pass')
b3 = BoatingTest.new(s2, t2, 'parking', 'fail')
b4 = BoatingTest.new(s2, t1, 'reverse', 'pass')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

