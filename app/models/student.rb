class Student

    attr_reader :first_name

    @@all = []

    def initialize (first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test (name, status, instructor)
        BoatingTest.new(self,name, status, instructor)
    end

    def grade_percentage
        passed = BoatingTest.all.select { |test|
            test.student == self && test.status == "passed"
        }
        total = BoatingTest.all.select { |test|
            test.student == self 
        }
        passed.to_f/total

    end
    
    def self.find_student(name)
        @@all.find { |student|
            student.name == name
        }
    end


    def self.all
        @@all
    end

end


# should initialize with first_name
# Student.all should return all of the student instances
# Student#add_boating_test should initialize a new boating test with a Student (Object), 
# a boating test name (String), a boating test status (String), and an Instructor (Object)
# Student.find_student will take in a first name and output the student (Object) with that name
# Student#grade_percentage should return the percentage of tests that the student has passed, 
# a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)