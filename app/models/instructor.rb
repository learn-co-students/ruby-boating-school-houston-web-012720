class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        has_test = student.boating_tests.find {|t| t.test_name == test_name}
        if has_test
            has_test.test_status = "passed"
            has_test
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        has_test = student.boating_tests.find {|t| t.test_name == test_name}
        if has_test
            has_test.test_status = "failed"
            has_test
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end
end
