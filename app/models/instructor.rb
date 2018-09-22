require 'pry'
class Instructor
  attr_accessor :name, :boating_test
  @@all = []

  def self.all
    @@all
  end #end self.all method

#why is the Instructor class passing or failing a student? shouldn't the instructor instance be passing/failing a student?
  def self.pass_student(student, test_name)
    result = []
    BoatingTest.all.each do |boating_test|
      if boating_test.name == test_name && boating_test.student.name == student
        boating_test.test_status = "pass"
        result << boating_test
      end
    end #end BoatingTest.all.each loop
    result
  end #end self.pass_student method

  def self.fail_student(student, test_name)
    result = []
    BoatingTest.all.each do |boating_test|
      if boating_test.name == test_name && boating_test.student.name == student
        boating_test.test_status = "fail"
        result << boating_test
      end
    end #end BoatingTest.all.each loop
    result
  end #end self.fail_student method


  def self.student_grade_percentage(student)
    #compare boating_test.student.name to parameter student - if it matches return the student grade percentage
    #how can instructor track student's grade? - check the test_status of the boatingtest array?
    #collect all the boatingtest instances where the student name matches the parameter student
    #run through the collected boatingtest array checking the test_status of each - if passed then increase the passed counter variable by 1
    #once the loop is done, the passed counter should have the number of tests the student has passed. the percentage can be calculated by passed count / collected boatingtest array's length * 100. should make the numbers into floatnums.
    if BoatingTest.all.any?{|boat_test| boat_test.student.name == student}
      passedTests = 0
      studentsTests = BoatingTest.all.select {|boat_test| boat_test.student.name == student}
      studentsTests.each do |boat_test|
        if boat_test.test_status.downcase == "pass"
          passedTests += 1
        end
      end #end studentsTests.each loop
      grade = ((passedTests.to_f / studentsTests.length.to_f) * 100.0).round(2)
      #the .round(2) makes the floatnum result only have 2 #s after decimal pt
    end #end BoatingTest.all.any? if stmt

  end #end self.student_grade_percentage method

  def initialize(name)
    @name = name
    self.class.all << self
  end #end initialize method

end #end Instructor class
