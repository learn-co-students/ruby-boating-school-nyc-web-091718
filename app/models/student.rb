require 'pry'

class Student

  attr_accessor :name
  @@all =[]

  def self.all
    @@all
  end

  def self.find_student(name)
    self.all.find do |student|
      student == name
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_boating_test(test_string, status_string, teacher)
    new_test = BoatingTest.new(self, test_string, status_string, teacher)
  end


  def self.find_student(first_name)
    Student.all.select do |student|
      student.name == first_name
    end
  end

end
