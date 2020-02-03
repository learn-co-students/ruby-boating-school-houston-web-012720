class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        new_test = BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        all.find {|student| student.first_name == first_name}
    end

    def boating_tests
        BoatingTest.all.select {|test| test.student.first_name == self.first_name}
    end

    def grade_percentage
        passed_tests = boating_tests.select {|test| test.test_status == "passed"}.count
        total_tests = boating_tests.count

        (100.0 * passed_tests / total_tests).round(2)
    end

end
