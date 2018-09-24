require 'pry'

class BoatingTest

  attr_accessor :student, :test, :status, :instructor

  @@all = []

  def self.all
    @@all
  end

  def initialize(student, test, status, instructor)
    @student = student
    @test = test
    @status = status
    @instructor = instructor

    @@all << self
  end

end
