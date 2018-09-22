class BoatingTest
  attr_reader :student, :instructor, :name
  attr_accessor :status
  @@all = []

  def self.all
    @@all
  end

  def initialize(student, name,status, instructor)
    @student = student
    @name = name
    @instructor = instructor
    @status = status
    @@all << self
  end

end
