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
    def pass_student(student, testName)
        array = BoatingTest.all.find{|test| test.testName == testName && test.student == student}
        if array == nil
            return BoatingTest.new(student, testName, 'passed', self)
        else
            return BoatingTest.all.(array[0]).testStatus = 'passed'
        end
    end
    def fail_student(student, testName)
        array = BoatingTest.all.find{|test| test.testName == testName && test.student == student}
        if array == nil
            BoatingTest.new(student, testName, 'failed', self)
        else
            BoatingTest.all.(array[0]).testStatus = 'failed'
        end
        BoatingTest.all(array[0])
    end

end
