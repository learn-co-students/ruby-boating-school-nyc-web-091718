class Instructor
attr_accessor :name

@@all = []

def self.all
@@all
end

def initialize(name)
  @name = name
  @@all << self
end

def pass_student(first_name, test_name)
  BoatingTest.all.detect {|boatingtest| boatingtest.student.first_name == student_name &&
    boatingtest.name == test_name}.status = "passed"

end

def fail_student(first_name, test_name)
  BoatingTest.all.detect {|boatingtest| boatingtest.student.first_name == student_name &&
    boatingtest.name == test_name}.status = "failed"
end

def student_grade_percentage
passes = BoatingTest.all.select {|boatingtest| boatingtest.student.first_name == student_name &&
  boatingtest.status = "passed"}.count
  total = BoatingTest.all.select { |boatingtest| boatingtest.student.first_name == student.name}.count
  passes.to_f/total
end


end
