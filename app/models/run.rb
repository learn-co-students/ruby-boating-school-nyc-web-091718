require_relative 'boatingtest.rb'
require_relative 'instructor.rb'
require_relative 'student.rb'
require 'pry'

s1 = Student.new("Al")
s2 = Student.new("Ben")
s3 = Student.new("Carl")

i1 = Student.new("Terry")
i2 = Student.new("Sal")

spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

test1= spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2= spongebob.add_boating_test("Don't Crash 102", "passed", puff)
test3= spongebob.add_boating_test("Don't Crash 103", "failed", puff)
test4= spongebob.add_boating_test("Don't Crash 104", "passed", puff)
test5= spongebob.add_boating_test("Don't Crash 105", "failed", puff)

binding.pry
