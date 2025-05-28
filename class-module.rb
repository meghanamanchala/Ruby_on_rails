module Greetable
  def greet
    puts "Hello #{@name}!, welcome to Ruby OOPS"
  end 
end 

class Student
  include Greetable

  def initialize(name)
    @name = name 
  end 
end

s1 = Student.new("Meghana")
s1.greet