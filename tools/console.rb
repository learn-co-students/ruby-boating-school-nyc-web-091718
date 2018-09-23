require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

student = Student.new("Spongebob")
boating_test_name = "Be_Careful"
status = "complete"
instructor = Instructor.new("Mr Puff")

puts Student.all
puts student.first_name

boating_test = student.add_boating_test(student, boating_test_name, status, instructor)
puts boating_test.status

locate_student = Student.find_student("Spongebob")
puts locate_student

new_test = BoatingTest.new(student, boating_test_name, status, instructor)
puts new_test

puts BoatingTest.all

puts instructor.name
puts Instructor.all

puts Instructor.pass_student("Spongebob", "Be_Careful")

boating_test2 = student.add_boating_test(student, "Be_more_careful", status, instructor)

puts Instructor.fail_student("Spongebob", "Be_more_careful")

puts Instructor.student_grade_percentage("Spongebob")



spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

test1 = spongebob.add_boating_test(spongebob, "Don't Crash 101", "pending", puff)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
