require 'pry'

def debug_example
  name = "Meghana"
  age = 20
  binding.pry 
  puts "User: #{name}, Age: #{age}"
end

debug_example
