class Student
attr_accessor :first_name
@@all = []

def self.all
@@all
end

def self.find_student(name)
self.all.select do |student|
  student.first_name == name
end
end

def initialize(first_name)
  @first_name = first_name
  @@all << self
end

def add_boating_test(name, status, instructor)
  BoatingTest.new(self, name, status, instructor)
end

end
