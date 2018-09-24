require 'pry'

class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.pass_student(student_name, test_name)
    find_student_test = BoatingTest.all.select do |test|
      test.student == student_name && test.test == test_name
    end
    find_student_test[0].status = "passed"
    find_student_test
  end

  def self.fail_student(student_name, test_name)
    find_student_test = BoatingTest.all.select do |test|
      test.student == student_name && test.test == test_name
    end
    find_student_test[0].status = "failed"
    find_student_test
  end

  def self.student_grade_percetage(student_name)
    find_student_test = BoatingTest.all.select do |test|
      test.student.name == student_name
    end
    total = find_student_test.count
    passed = 0.0
    find_student_test.each do |test|
      if test.status == "passed"
        passed+=1
      end
    end
    "#{(passed/total).round(4)*100}%"
  end

end
