# Summary and explanation of exercises 1-11

# An operator that performs expression substitution inside a string literal.
# A string literal is a sequence of characters enclosed in either "" or ''
#{}

# The = sign is an assignment operator used to asign a value to a variable
dog = "spot"
puts "Hi #{dog}!"

# The + sign is an operator used to represent addition.
age = 7
age = age + 7
puts "You're #{age} years old."

# The * sign is an operator used to perform multiplication.
greeting = "HI" * 5
puts "#{greeting}!"

# A technique used to create a formatter for text
formatter = "%{name} %{age} %{favorite_color}"
puts formatter % {name: "bob", age: 20, favorite_color: "red"}

# A simple method used to escape multiple characters
# Lowercase q is like single quotes and uppercase Q is like double quotes
puts %q{
  This allows you to do
  "multiple lines of text"
  all in one puts output.
}

# \n is an escape character that moves the proceeding text to a new line.
text = "I'm split\non two lines"
puts text

# \t is an escape character that moves the proceeding text one tab over.
new_text = "This is text \tthat's tabbed one time to the right."
puts new_text

# Gets is a method that waits for the user to enter text and then stores that text in the assigned variable.
# Chomp is a method used to remove the new line carriage return from the text.
# To_i is a method used to convert the string to a fixnum (integer).
print "Please enter your name:"
name = gets.chomp
print "Please enter your age:"
age = gets.chomp.to_i
print "Please enter your city name:"
location = gets.chomp
new_formatter = "%{n} is %{a} years old and lives in %{l}."
puts new_formatter % {n: name, a: age, l: location}
