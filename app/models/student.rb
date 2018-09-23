# should initialize with first_name. # Student.all should return all of the student instances.
# Student#add_boating_test should initialize a new boating test. # with a student (Object), a boating test name (String), a
        # boating test status (String), and an Instructor (Object).
# Student.find_student will take in a student first name and # output that student.
class Student
  @@all = []
  attr_accessor :student_name

  def initialize(student_name)
    @student_name = student_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_student(student_name)
    @@all.find do |student|
      student.name == student_name
    end
  end

#wrong:
# def add_boating_test(student, boating_test_name, boating_test_status, instructor)   Right:
  def add_boating_test(boating_test_name, boating_test_status, instructor)
# We're in the Student class, so this method won't accept an argument of student; the instance IS the student.
    new_boating_test = BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end
end


# attr_accessor :first_name, :last_name
#
# @@all= []
#
# def initialize(first_name)
# @first_name = first_name
# @@all << self
# end
#
# def self.all
#   @@all
# end
#
# def add_boating_test(name, status, instructor)
#   BoatingTest.new(self, name, status, instructor)
# end
#
# def self.find_student(student_first_name)
#   self.all.find{|student| student.first_name == student_first_name}
# end
