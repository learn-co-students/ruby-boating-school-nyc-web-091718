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

  def self.pass_student(first_name, test_name)
    found_student = Student.find_student(first_name)

    student_boating_test = BoatingTest.all.find do |boating_test|
      boating_test.student == found_student && boating_test.name == test_name
    end

    student_boating_test.status = 'passed'
  end

  def self.fail_student(first_name, test_name)
    found_student = Student.find_student(first_name)

    student_boating_test = BoatingTest.all.find do |boating_test|
      boating_test.student == found_student && boating_test.name == test_name
    end

    student_boating_test.status = 'failed'
  end

  def self.student_grade_percentage(first_name)
    found_student = Student.find_student(first_name)

    student_boating_tests = BoatingTest.all.select do |boating_test|
      boating_test.student == found_student && boating_test.status != 'complete'
    end

    total_passed = 0.0
    student_boating_tests.each do |boating_test|
      if boating_test.status == 'passed'
        total_passed  += 1
      end
    end

    total_passed / student_boating_tests.size

end




end
