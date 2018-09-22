class Student
  attr_reader :first_name
  @@all = []

  def self.all
    @@all
  end

  def self.find_student(first_name)
    @@all.find do |student|
      student.first_name == first_name
    end
  end

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(name,status,instructor)
    new_test = BoatingTest.new(self,name,status,instructor)
  end

end
