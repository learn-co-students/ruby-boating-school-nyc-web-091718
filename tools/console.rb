require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Student.new("Kris1")
s3 = Student.new("Kris3")
s2 = Student.new("Kris2")
binding.pry
i1 = Instructor.new("Kibble1")
i2 = Instructor.new("Kibble2")
i3 = Instructor.new("Kibble3")
binding.pry
    #BoatingTest.new(studentobject, testnamestring, teststatusstring, instructorobejct)
t1 = s1.add_boating_test("Name1", "Pending", i3)
t2 = s1.add_boating_test("Name2", "Pending", i3)
t3 = s2.add_boating_test("Name3", "Pending", i2)
t4 = s3.add_boating_test("Name4", "Pending", i1)
binding.pry
i1.pass_student("Kris1", "Name1")
i1.pass_student("Kris1", "Name2")
i1.pass_student("Kris3","Name4")
i1.fail_student("Kris2","Name3")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
