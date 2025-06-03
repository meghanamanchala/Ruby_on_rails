contacts = [
  { name: "Meghana", phone: "1234567890", email: "megha@example.com" },
  { name: "Krishik", phone: "9876543210", email: "krish@example.com" },
  { name: "Roopak", phone: "5531234567", email: "roopak@example.com" }
]

contacts.each do |contact|
  puts "Name: #{contact[:name]}"
  puts "Phone: #{contact[:phone]}"
  puts "Email: #{contact[:email]}"
  puts "-" * 25
end
