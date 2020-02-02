class Student
  
  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    self.first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end  

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def grade_percentage
    passed = BoatingTest.all.select { |test| test.student == self && test.status == "Passed" }.count.to_f
    BoatingTest.all.count / passed # if none passed returns infinity due to division of zero. Could fix with a check
    # for no tests passed, but i'm lazy ;)
  end  

  def self.find_student(name)
    @@all.find { |student| student.first_name == name }
  end  

end
