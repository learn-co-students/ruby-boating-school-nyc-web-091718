class Instructor
  attr_reader :name
  @@all = []


  def self.all
    @@all
  end

  def self.pass_student(student_name,test_name)
    specific_test = BoatingTest.all.find do |b_test|
      b_test.name == test_name && b_test.student.first_name == student_name
    end
    specific_test.status = "passed"
  end

  def self.fail_student(student_name,test_name)
    specific_test = BoatingTest.all.find do |b_test|
      b_test.name == test_name && b_test.student.first_name == student_name
    end
    specific_test.status = "failed"
  end

  def self.student_grade_percentage(student_name)
    all_tests = BoatingTest.all.select do |b_test|
      b_test.student.first_name == student_name
    end

    passed_tests = all_tests.select do |s_test|
      s_test.status =="passed"
    end
    (passed_tests.size.to_f/all_tests.size.to_f) * 100
  end


  def initialize(name)
    @name = name

    @@all << self
  end

end
