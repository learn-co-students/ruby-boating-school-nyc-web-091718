require 'pry'

class Instructor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end


  ### Class Methods
  def self.all
    @@all
  end

  def self.pass_student(name, test_name)
    BoatingTest.all.find do |test|
      if test.student.first_name == name && test.test_name == test_name
        test.status = "passed"
      end
    end
  end

  def self.fail_student(name, test_name)
    BoatingTest.all.find do |test|
      if test.student.first_name == name && test.test_name == test_name
        test.status = "failed"
      end
    end
  end

  def self.student_grade_percentage(first_name)
    pass_count = 0.00
    fail_count = 0.00
    BoatingTest.all.select do |test|
      test.student.first_name == first_name
      if test.status == "passed"
        pass_count += 1
      else
        fail_count += 1
      end
    end
    percent = pass_count / (pass_count + fail_count)
    percent *= 100.00
  end


end ### End of Instructor Class



# Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed
