class Student
    attr_accessor :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end
    def self.all
        @@all
    end
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self,test_name, test_status,instructor)
    end
    def find_student(first_name)
    @@all.find{|student| student.first_name == first_name}
    end
    def grade_percentage
     test_passed = 0
      test = BoatingTest.all.select do |test|
            test.student == self 
        end
        test.each do |test|
            if test.status == "Passed"
                test_passed +=1 
            end
        end
        test_passed.to_f/test.length.to_f
    end

end
