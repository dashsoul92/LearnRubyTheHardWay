# The ARGV is the argument variable that holds arguments that you pass to your ruby script when you run it.
first, second, third = ARGV

# When your script uses ARGV, you must use the $stdin method to get user input.
print "Please enter a fourth variable: "
fourth = $stdin.gets.chomp

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "Your fourth variable is: #{fourth}"
