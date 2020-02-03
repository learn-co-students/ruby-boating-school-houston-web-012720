class Instructor

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def tests
        BoatingTest.all.select{|test| test.instructor ==self}
    end

    def pass_student(student, test_name)
        this_test = BoatingTest.all.find{|test| (test.student == student) && (test.test_name == test_name)}
        if this_test
            this_test.test_status = "passed"
        else this_test = BoatingTest.new(student, test_name, "passed", self)
        end
        this_test
    end

    def fail_student(student, test_name)
        this_test = BoatingTest.all.find{|test| (test.student == student) && (test.test_name == test_name)}
        if this_test
            this_test.test_status = "failed"
        else this_test = BoatingTest.new(student, test_name, "failed", self)
        end
        this_test
    end
end
