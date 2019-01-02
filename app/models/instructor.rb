class Instructor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

#########
  # def pass_student(student_name,test_name)
  #   BoatingTest.all.each do |test|
  #     if (test.student.first_name == student_name) && (test.test_name == test_name)
  #       test.test_status = "passed"
  #     else
  #       new_student = Student.all.find {|student| student.first_name == student_name}
  #       BoatingTest.new(new_student,test_name,"passed",self)
  #   end
  # end

  def pass_student(student_name,test_name)
    existing_test = BoatingTest.all.find do |test|
      (test.student.first_name == student_name) && (test.test_name == test_name)
    end

    if existing_test == nil
      new_student = Student.all.find {|student| student.first_name == student_name}
      BoatingTest.new(new_student,test_name,"passed",self)
    else
      existing_test.test_status = "passed"
    end
  end


  def fail_student(student_name,test_name)
    existing_test = BoatingTest.all.find do |test|
      (test.student.first_name == student_name) && (test.test_name == test_name)
    end

    if existing_test == nil
      new_student = Student.all.find {|student| student.first_name == student_name}
      BoatingTest.new(new_student,test_name,"failed",self)
    else
      existing_test.test_status = "failed"
    end
  end


  def self.all
    @@all
  end
end
