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

    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end

    def self.find_student(first_name)
        @@all.find{|student| student.first_name == first_name}
    end

    def grade_percentage
        "No data????"
    end

end
