class Instructor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def pass_student(student, name)

        test = BoatingTest.all.find{|test| test.student == student && test.name == name}

        if test != nil
            test.status = "pass"
        else
            BoatingTest.new(student,self, name, 'pass')
        end

        
    end

    def fail_student(student, name)
        test = BoatingTest.all.find{|test| test.student == student && test.name == name}

        if test != nil
            test.status = "fail"
        else
            BoatingTest.new(student,self, name, 'fail')
        end

    end


end
