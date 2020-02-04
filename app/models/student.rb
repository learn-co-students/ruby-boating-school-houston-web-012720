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
    
    def tests
        BoatingTest.all.select {|t| t.student == self}
    end


    def add_boating_test(instructor, name, status)
        BoatingTest.new(self, instructor, name, status)
    end

    def self.find_student(first_name)
        self.all.find {|s| s.first_name == first_name } 
    end

    def grade_percentage
        passed = 0
        tests.each do |t| 
        if t.status == "pass"
            passed += 1 
        end
    end
        percentage = (passed.to_f / tests.count.to_f) * 100 


    end




end
