require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
chris = Student.new("chris")
bob = Student.new("bob")

adam = Instructor.new("adam")
nick = Instructor.new("nick")

test1 = chris.add_boating_test("crash", "pending", adam)
test2 = chris.add_boating_test("whatever", "pending", nick)
test3 = bob.add_boating_test("driving", "pending", adam)
test4 = bob.add_boating_test("swimming", "pending", nick)

adam.pass_student(chris, test1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
