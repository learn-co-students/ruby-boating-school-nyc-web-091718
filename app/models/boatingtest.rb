# 'BoatingTest' class:
# should initialize with student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# BoatingTest.all returns an array of all boating tests
class BoatingTest
  @@all = []
  attr_accessor :student, :boating_test_name, :boating_test_status, :instructor

  def initialize(student, boating_test_name, boating_test_status, instructor)
    @student = student
    @boating_test_name = boating_test_name
    @boating_test_status = boating_test_status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end
end

# class BoatingTest
# attr_accessor :student, :name, :status, :instructor
#
# @@all= []
#
# def initialize(student, name, status, instructor)
#   @student = student
#   @name = name
#   @status = status
#   @instructor = instructor
#   @@all << self
# end
#
# def self.all
#   @@all
# end
#
# end
