class Student
    @@all = [ ]
    attr_reader :first_name
    def initialize(first_name)
    @first_name = first_name
    @@all << self
    end 
    def self.all
        @@all 
    end
    def add_boating_test(test_name,test_status,inst)
        BoatingTest.new(self,test_name,test_status,inst)
    end
    def self.find_student(first_name)
        @@all.find do |student|
            student.first_name == first_name
        end
    end
    def grade_percentage
        tests = BoatingTest.all.select do |test|
            test.student == self
        end
        all = tests.count
        passed = tests.select do |test|
            test.test_status == "passed"
        end
        pass = passed.count
       ( pass.to_f / all.to_f)* 100
    end
end

# how many test a student took  
    # call the clas boattest to get all the test check the test.name == self
    # return the .count
# how many passed 
    # test_stauts == passed 
    # .count
#  calculate percentage how many passed / had
# (3.to_f / 9.to_f)* 100