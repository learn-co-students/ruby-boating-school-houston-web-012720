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
    def pass_student(student, test_name)
        test = BoatingTest.all.find do |boat_test|
             boat_test.student == student && boat_test.test_name == test_name
            end
            if test 
                test.test_status = "passed"
                test
            else 
                student.add_boating_test(test_name,"passed",self)
            end
        end
        def fail_student(student, test_name)
            test = BoatingTest.all.find do |boat_test|
                 boat_test.student == student && boat_test.test_name == test_name
                end
                if test 
                    test.test_status = "fail"
                    test
                else 
                    student.add_boating_test(test_name,"fail",self)
                end
            end
    # test , no matching test
    #  test test.staus = pass
    #  no matching test
    #  create a test ( student, test_name) +
    #  status = pass


end
