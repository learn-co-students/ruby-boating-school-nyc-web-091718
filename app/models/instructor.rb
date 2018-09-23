# 'Instructor' class:
#
# init with name
# return all instructors
# Instructor.pass_student should take in a student name and test name and return status failed
# Instructor.fail_student should take in a student name and test name and return status failed
# Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed.
#

class Instructor
  @@all = []
  attr_accessor :name

  def initialize(instructor_name)
    # Careless error Wrong:
     @name = instructor_name #Right:
     @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    #You need to add a status to the test OBJECT.  Wrong:
    # status = "passed"
    test_to_grade = BoatingTest.all.find do |test|
      test.student.student_name == student_name && test.test_name == test_name
    end
    test_to_grade.status = "passed"
  end

  def self.fail_student(student_name, test_name)
    #You need to add a status to the test OBJECT.  Wrong:
    # status = "failed"
    test_to_grade = BoatingTest.all.find do |test|
      test.student.student_name == student_name && test.test_name == test_name
    end
    test_to_grade.status = "failed"
  end

  def self.student_grade_percentage(student_name)
    tests_taken_by_student = BoatingTest.all.select do |test|
       test.student.student_name == student_name
     end
     tests_passed_by_student = tests_taken_by_student.select do |test|
       test.status == "passed"
     end
       percentage = tests_passed_by_student.length.to_f/tests_taken_by_student.length.to_f)*100
  end

end


attr_accessor :name

@@all= []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_first_name, test_name)
    testtopass= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name}
    testtopass.status= "passed"
  end

  def self.fail_student(student_first_name, test_name)
    testtofail= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name}
    testtofail.status= "failed"
  end

  def self.student_grade_percentage(student_first_name)
    studentTests= BoatingTest.all.find_all{|test| test.student.first_name == student_first_name}
    totalTests= studentTests.length.to_f
    totalPassed= studentTests.find_all{|test| test.status == "passed"}
    numPassed= totalPassed.length.to_f
    percent= (numPassed/totalTests)*100
  end
