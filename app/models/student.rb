class Student

    @@all = []

    attr_reader :first_name

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        all.find{|student| student.first_name == first_name}
    end

    def tests
        BoatingTest.all.select{|test| test.student == self}
    end

    def tests_passed
        tests.select{|test| test.test_status == "passed"}
    end

    def tests_failed
        tests.select{|test| test.test_status == "failed"}
    end

    def grade_percentage
        tests_passed.count/tests.count.to_f
    end

end