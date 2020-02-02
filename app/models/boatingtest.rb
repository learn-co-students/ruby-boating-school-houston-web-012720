class BoatingTest
    attr_accessor :student , :test_name , :test_status , :inst
    @@all = [ ]
    def initialize(student,test_name,test_status,inst)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @inst = inst
        @@all << self
    end
    def self.all
        @@all 
    end 
end
