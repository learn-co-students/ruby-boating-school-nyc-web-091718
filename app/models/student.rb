class Student
  attr_accessor :name, :boating_test
  @@all = []

  def self.all
    @@all
  end #end self.all method

  def self.find_student(name)
    self.all.find {|student| student.name == name}
  end #end self.find_student method

  def initialize(name)
    @name = name
    @@all << self
  end #end initialize method

  def add_boating_test (boat_test_name, boat_test_status, instructor)
    new_test = BoatingTest.new(self, boat_test_name, boat_test_status, instructor)
    self.boating_test = new_test
    new_test
  end #end add_boating_test method

end #end Student class
