class BoatingTest
  attr_accessor :name, :student, :teacher, :instructor
@@tests = []

def self.all
@@tests
end

def initialize(student, name, status, instructor)
  @student = student
  @name = name
  @status = status
  @instructor = instructor
  @@tests << self
end

end
