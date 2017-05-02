formatter = "%{first} %{second} %{third} %{fourth}"
persons_info = "Name: %{name}, Age: %{age}, Weight: %{weight}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "fourth"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}

puts ""
puts persons_info % {name: "ben", age: 10, weight: 155}
puts persons_info % {name: "mei", age: 99, weight: 97}
