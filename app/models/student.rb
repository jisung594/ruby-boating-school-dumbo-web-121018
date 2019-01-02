class Student
  @@all = []
  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name,test_status,instructor)
    BoatingTest.new(self,test_name,test_status,instructor)
  end

  def self.find_student(name)
    @@all.find do |student|
      student.first_name == name
    end
  end

  def student_tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def grade_percentage
    passed = student_tests.select do |test|
      test.test_status == "passed"
    end

    passed.count.fdiv(student_tests.count) * 100
  end

  def self.all
    @@all
  end
end
