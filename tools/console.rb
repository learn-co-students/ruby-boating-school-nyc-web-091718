require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

test1= spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2= spongebob.add_boating_test("How to Drive", "pending", puff)

find1 = Student.find_student("Patrick")

Instructor.pass_student("Spongebob", "Don't Crash 101")
Instructor.fail_student("Spongebob", "How to Drive")
binding.pry
Instructor.student_grade_percentage("Spongebob")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


0 #leave this here to ensure binding.pry isn't the last line
