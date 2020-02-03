class Student
    attr_accessor :name

    @@all = []

    def initialize (first_name)
        @name = first_name
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_boating_test (test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(target_student)
        self.all.find {|student| student.name == target_student}
    end

    def tests 
        BoatingTest.all.select {|test| test.student == self}
    end

    def grade_percentage 
        passed = 0
        self.tests.each do |test|
            if test.test_status == "pass"
                passed += 1
            end
        end
        grade = ((passed.to_f / self.tests.count.to_f) * 100).round(2)
    end
end
