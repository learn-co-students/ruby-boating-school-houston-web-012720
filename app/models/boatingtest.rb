class BoatingTest

  attr_accessor :student, :name, :status, :instructor

  @@all = []

  def initialize(student, name, status, instructor)
    self.student = student
    self.name = name
    self.status = status
    self.instructor = instructor
    @@all << self 
  end

  def self.all
    @@all
  end  

end
