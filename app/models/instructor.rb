require 'pry'

class Instructor
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def get_student_tests(first_name)
    BoatingTest.all.select do |the_test|
      the_test.student.first_name == first_name
    end
  end

  def grade_student(student_name, test_name, new_status)
    tests = self.get_student_tests(student_name)
    the_test = tests.find {|t| t.test_name == test_name}
    the_test.test_status = new_status
  end

  def pass_student(student_name, test_name)
    grade_student(student_name, test_name, "passed")
  end

  def fail_student(student_name, test_name)
    grade_student(student_name, test_name, "failed")
  end

end
