class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    exam = BoatingTest.all.find { |test| test.name == test_name && test.student == student }
    exam.status = "Passed"
  end

  def fail_student(student, test_name)
    exam = BoatingTest.all.find { |test| test.name == test_name && test.student == student }
    exam.status = "Failed"
  end

end
