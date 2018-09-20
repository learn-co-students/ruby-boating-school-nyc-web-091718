class BoatingTest
  attr_reader :student, :instructor, :test_name
  attr_accessor :test_status

  @@all = []

  def self.all
    @@all
  end

  def initialize(student, test_name, test_status, instructor)
    @student = student
    @instructor = instructor
    @test_name = test_name
    @test_status = test_status

    @@all << self
  end
end
