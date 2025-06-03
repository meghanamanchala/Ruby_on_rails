def assign_grade(score)
  if score >= 90
    'A'
  elsif score >= 80
    'B'
  elsif score >= 70
    'C'
  elsif score >= 60
    'D'
  else
    'F'
  end
end

students = [
  { name: 'Meghana', score: 95 },
  { name: 'Krishna', score: 82 },
  { name: 'Roopak', score: 68 },
  { name: 'Krishik', score: 74 },
  { name: 'Bittu', score: 59 }
]

puts "Student Grades:"
students.each do |student|
  grade = assign_grade(student[:score])
  puts "#{student[:name]} - Score: #{student[:score]}, Grade: #{grade}"
end
