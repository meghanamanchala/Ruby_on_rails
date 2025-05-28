require 'colorize'

def write_note(note)
  begin
    File.open("notes.txt", "a") do |file|
      file.puts(note)
    end
    puts "Note saved!".green
  rescue => e
    puts "Error saving note: #{e.message}".red
  end
end

def read_notes
  begin
    if File.exist?("notes.txt")
      puts "Your Notes:".blue
      puts "-" * 20
      File.foreach("notes.txt") { |line| puts line.yellow }
    else
      puts "No notes found.".red
    end
  rescue => e
    puts "Error reading notes: #{e.message}".red
  end
end

puts "Choose an option: 1 - Write note, 2 - Read notes".light_cyan
choice = gets.chomp

if choice == "1"
  puts "Enter your note:".cyan
  note = gets.chomp
  write_note(note)
elsif choice == "2"
  read_notes
else
  puts "Invalid choice.".red
end
