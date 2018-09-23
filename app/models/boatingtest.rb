class BoatingTest
  attr_accessor :name, :student, :status, :instructor
@@all = []

def self.all
@@all
end

def initialize(student, name, status, instructor)
  @student = student
  @name = name
  @status = status
  @instructor = instructor
  @@all << self
end

end
