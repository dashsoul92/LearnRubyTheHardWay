filename = ARGV.first

# The open method will open a file, if it exists, or create a new one if it doesn't.
# The open method not only takes a filename, but also a mode and optional parameters.
# The file object will be automatically closed after the block terminates.
txt = open(filename)

puts "Here's your file #{filename}"

# The read method opens the given file and then returns the contents.
# If a length isn't provided then, by default, it will return the whole files' contents.
print txt.read, "\n"

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
