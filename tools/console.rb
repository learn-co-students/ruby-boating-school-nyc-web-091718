require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

 t1= spongebob.add_boating_test("Don't Crash 101", "pass", puff)
 t2= spongebob.add_boating_test("Don't Crash 102", "pass", puff)
 t3= spongebob.add_boating_test("Don't Crash 103", "fail", puff)
 t4= patrick.add_boating_test("Don't Crash 104", "fail", krabs)
 t5= patrick.add_boating_test("Don't Crash 105", "pass", krabs)

# Instructor.pass_student("Spongebob", "Don't Crash 101")
# Instructor.student_grade_percentage("Spongebob")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
