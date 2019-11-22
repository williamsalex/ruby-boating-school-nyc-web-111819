class BoatingTest
    @@all = []
    attr_reader :student, :testName, :instructor
    attr_accessor :testStatus
    def initialize(student, testName, testStatus, instructor)
        @student = student
        @testName = testName
        @testStatus = testStatus
        @instructor = instructor
        @@all << self
    end
    def self.all
        @@all
    end
end
