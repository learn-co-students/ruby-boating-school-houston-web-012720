class Instructor
    attr_accessor :name

    @@all = []

    def initialize(first_name)
        @name = first_name
        @@all << self
    end

    def self.all 
        @@all
    end

    def find_test (student, target_test)
        BoatingTest.all.find do |test|
            test.student == student && test.test_name == target_test
        end
    end

    def pass_student (student, test_name)
       if find_test(student, test_name)
            find_test(student, test_name).test_status = "pass"
       else
            BoatingTest.new(student, test_name, "pass", self)
       end
       find_test(student, test_name)
    end

    def fail_student (student, test_name)
        if find_test(student, test_name)
             find_test(student, test_name).test_status = "fail"
        else
             BoatingTest.new(student, test_name, "fail", self)
        end
        find_test(student, test_name)
     end

end


# [2] pry(main)> i1.pass_student(s2, "|| parking")
# => #<BoatingTest:0x00007fd20041cbc8
#  @instructor=#<Instructor:0x00007fd2001ef4e0 @name="mrs. puff">,
#  @student=#<Student:0x00007fd2001ef8c8 @name="patrick">,
#  @test_name="|| parking",
#  @test_status="pass">
# [3] pry(main)> b2
# => #<BoatingTest:0x00007fd2001ef210
#  @instructor=#<Instructor:0x00007fd2001ef4e0 @name="mrs. puff">,
#  @student=#<Student:0x00007fd2001ef8c8 @name="patrick">,
#  @test_name="|| parking",
#  @test_status="fail">
# [4] pry(main)> 