class Student
  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end



  ### Class Methods
  def self.all
    @@all
  end

  def self.find_student(name)
    self.all.find do |student|
      student.first_name == name
    end
  end

end ### End of Student Class
