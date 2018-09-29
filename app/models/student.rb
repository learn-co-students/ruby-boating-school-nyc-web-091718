class Student

  attr_accessor :first_name

  @@all = []

  def self.all
    @@all
  end

  def self.find_student(name)
    self.all.find do |student|
      student if student.first_name == name
    end
  end

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

end
