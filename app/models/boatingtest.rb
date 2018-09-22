class BoatingTest
  attr_accessor :status, :test_name, :instructor, :student
  @@all = []

  def initialize(student, test_name, status, instructor)
    @test_name = test_name
    @status = status
    @student = student
    @instructor = instructor

    @@all << self
  end



  ### Class Methods
  def self.all
    @@all
  end

end ### End of BoatingTest class
