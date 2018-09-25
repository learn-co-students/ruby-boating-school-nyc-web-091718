class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student_name, test_name)
    BoatingTest.all.each do |student_test|
      #binding.pry
      if student_test.student == student_name && student_test = test_name
        return student_test.status = "passed"
      end
    end
  end

  def fail_student(student_name, test_name)
    BoatingTest.all.each do |student_test|
      #binding.pry
      if student_test.student == student_name && student_test = test_name
        return student_test.status = "failed"
      end
    end
  end

  def self.student_grade_percentage(student_first_name)
      studentTests= BoatingTest.all.find_all{|test| test.student.first_name == student_first_name}
      totalTests= studentTests.length.to_f
      totalPassed= studentTests.find_all{|test| test.status == "passed"}
      numPassed= totalPassed.length.to_f
      percent= (numPassed/totalTests)*100
    end

end
