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
    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end
    def self.find_student(firstname)
        BoatingTest.all.find{|student| student.first_name == firstname }
    end
    def grade_percentage
        tests = BoatingTest.all.select{|test| test.student == self}
        if tests.select{|test| test.testStatus == 'failed'} == []
            return 100.0
        else
            return (tests.select{|test| test.testStatus == 'failed'}.length.to_f)/(tests.length.to_f)*100
        end
    end
end
