class Student
attr_accessor :first_name


def self.all
@@students
end

def self.find(name)
@@students.all.slesct {|student| student.first_name == name}
end

@@students = []
def initialize(first_name)
  @first_name = first_name
  @@students << self
end

def add_boating_test(name, status, instructor)
  BoatingTest.new(self, name, status, instructor)
end

end
