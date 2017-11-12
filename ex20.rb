input_file = ARGV.first

# A method used to read until end of file(EOF).
def print_all(f)
  puts f.read, "\n"
end

# A method that moves the carriage to the 0 byte (first byte) in the file.
# In other words, it's a method used to move the carriage back to the beginning.
def rewind(f)
  f.seek(0)
end

# A method used to print out the current line as well as that lines contents.
# The gets method reads the next line from the I/O stream.
# The chomp method removes carriage return characters.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# The open method creates an IO (or File) object.
current_file = open(input_file)

puts "First let's print the whole file:"
print_all(current_file)

puts "Now let's rewind, kind of like a tape.", "\n"
rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)