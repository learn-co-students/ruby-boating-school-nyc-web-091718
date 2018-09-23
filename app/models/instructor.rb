class Instructor
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.get_student_test(student, test_name)
    BoatingTest.all.find do |boating_test|
      boating_test.student == student && boating_test.test_name == test_name
    end
  end

  def self.get_all_student_tests(student)
    BoatingTest.all.select do |boating_test|
      boating_test.student == student
    end
  end

  def self.pass_student(student, test_name)
    binding.pry
    self.get_student_test(student, test_name).status = "passed"
  end

  def self.fail_student(student, test_name)
    self.get_student_test(student, test_name).status = "failed"
  end

  def self.student_grade_percentage(student)
    all_tests = self.get_all_student_tests(student)
    passed_tests = all_tests.select {|boating_test| boating_test.status == "passed"}
    percentage = passed_tests.count.to_f / all_tests.count.to_f
    puts "#{student.name} has a passing rate of #{percentage * 100}%."
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

end
