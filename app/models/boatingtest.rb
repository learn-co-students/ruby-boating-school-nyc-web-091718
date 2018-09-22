class BoatingTest
  attr_accessor :name, :test_status, :student, :instructor
  @@all = []

  def self.all
    @@all
  end #end self.all method

  def initialize(student, name, test_status, instructor)
    @student = student
    @name = name
    @test_status = test_status
    @instructor = instructor
    self.class.all << self
  end #end initialize method

end #end BoatingTest class
