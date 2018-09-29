class Instructor

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.pass_student(name, test_taken)
    BoatingTest.all.each do |t|
      t.test_status = "pass" if (t.student.first_name == name && t.test_name == test_taken)
    end
  end

  def self.fail_student(name, test_taken)
    BoatingTest.all.each do |t|
      t.test_status = "fail" if (t.student.first_name == name && t.test_name == test_taken)
    end
  end

  def self.student_grade_percentage(name)
    tests_taken = BoatingTest.all.find_all do |t|
      t.student.first_name == name
    end
    tests_passed = BoatingTest.all.find_all do |t|
      t.student.first_name == name && t.test_status == "pass"
    end
    (tests_passed.count.to_f / tests_taken.count.to_f) * 100
  end

  def initialize(name)
    @name = name
    @@all << self
  end

end
