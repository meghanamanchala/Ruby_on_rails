def write_note(note)
  File.open("notes.txt", "a") do |file|
    file.puts(note)
  end
  puts "Note saved!"
end

def read_notes
  if File.exist?("notes.txt")
    puts "Your Notes:"
    puts "-" * 20
    File.foreach("notes.txt") { |line| puts line }
  else
    puts "No notes found."
  end
end

puts "Choose an option: 1 - Write note, 2 - Read notes"
choice = gets.chomp

if choice == "1"
  puts "Enter your note:"
  note = gets.chomp
  write_note(note)
elsif choice == "2"
  read_notes
else
  puts "Invalid choice."
end
