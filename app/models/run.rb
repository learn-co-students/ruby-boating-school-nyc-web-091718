require 'pry'
require_relative 'boatingtest.rb'
require_relative 'instructor.rb'
require_relative 'student.rb'


spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

patrick.first_name

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

# binding.pry

test1 = spongebob.add_boating_test("Don't Crash 101", "pending", puff)

# binding.pry

test2 = patrick.add_boating_test("Ruby 101", "pending", puff)
test3 = patrick.add_boating_test("JS 101", "passed", puff)
test4 = patrick.add_boating_test("CSS 101", "passed", puff)

Instructor.pass_student("Spongebob", "Don't Crash 101")

# binding.pry

Instructor.fail_student("Patrick", "Ruby 101")

# binding.pry

Instructor.student_grade_percentage("Patrick")

binding.pry
