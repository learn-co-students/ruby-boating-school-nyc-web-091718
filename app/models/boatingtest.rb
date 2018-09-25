class BoatingTest

  attr_accessor :test_name, :status
  attr_reader :student, :instructor

  @@all = []


  def initialize(student, test_name, status, instructor)
    @student = student
    @test_name = test_name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end


end
