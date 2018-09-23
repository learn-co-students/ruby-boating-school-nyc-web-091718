

class Student

  attr_reader :first_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(student, boating_test, status, instructor)
    new_test = BoatingTest.new(student, boating_test, status, instructor)
    new_test

  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name

    end

  end

end
