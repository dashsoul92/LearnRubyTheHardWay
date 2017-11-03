filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file, Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1 + "\n")
target.write(line2 + "\n")
target.write(line3 + "\n")

puts "And finally, we close it."
target.close

print "Do you want to rename the file(YorN): "
response = $stdin.gets.chomp
if response == 'Y'
  print "What would you like the new name to be: "
  new_filename = $stdin.gets.chomp
  File.rename(filename, new_filename)
else
  exit
end
