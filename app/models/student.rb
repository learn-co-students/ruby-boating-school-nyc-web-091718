class Student
  attr_reader :first_name
  @@all = []

  def self.all
    @@all
  end

  def self.find_student(first_name)
    Student.all.find {|student| student.first_name == first_name}
  end

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

end
