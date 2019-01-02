require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

marcus = Student.new("Marcus")
danielle = Student.new("Danielle")
tommy = Student.new("Tommy")

jan = Instructor.new("Jan")
mike = Instructor.new("Mike")
steph = Instructor.new("Steph")

test1 = BoatingTest.new(marcus,"Test 1","passed",jan)
test2 = BoatingTest.new(marcus,"Test 2","passed",steph)
test3 = BoatingTest.new(marcus,"Test 3","failed",mike)
test4 = BoatingTest.new(marcus,"Test 4","failed",mike)
test5 = BoatingTest.new(marcus,"Test 5","failed",mike)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
