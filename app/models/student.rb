class Student
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.find_student(name)
    self.all.select {|student| student.name == name}
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

end
