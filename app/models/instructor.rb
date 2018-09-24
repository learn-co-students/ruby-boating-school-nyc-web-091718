class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    #access boating tests (join table)
    #use find_student class method to create student test relation
    #save variable from find_student
    #use found student variable and boatingtest.test_name to find test
    #change test status to passed
    found_student = Student.find_student(student_name)
    found_test = BoatingTest.all.find do |b_test|
      b_test.student == found_student && b_test.test_name == test_name
    end
    found_test.status = "passed"
  end

  def self.fail_student(student_name, test_name)
    #same approach as above
    found_student = Student.find_student(student_name)
    found_test = BoatingTest.all.find do |b_test|
      b_test.student == found_student && b_test.test_name == test_name
    end
    found_test.status = "failed"
  end

  def self.student_grade_percentage(student_first_name)
    #use find_student again
    #instead of finding a test, collect all student tests
    #collect status passed and divide by test count
    found_student = Student.find_student(student_first_name)
    all_student_tests = BoatingTest.all.select do |b_test|
      b_test.student == found_student && b_test.status != "pending"
    end
    passed_tests = 0.0
    all_student_tests.each do |b_test|
      if b_test.status == "passed"
      passed_tests += 1
      end
    end
    passed_tests / all_student_tests.count
  end



end
