=begin
Given an array, return a new array containing only the elements that starts with 'a’
For example, an array like `['bananas', 'apples', 'pears', 'avocados']` should return `['apples', 'avocados']`
=end


names = ["Claudia", "Martha", "Irene", "Anna", "Louise", "Alicia", "Corrie", "Iris"]


puts "---------------- Give me all the names ----------------"
puts names

puts "-------------- Give the first name (0)-----------"
puts names[0]

puts "------------- Give the first name but using first------------"
puts names.first

puts "------------- Give the last name using last------------"
puts names.last

puts "----------------Reverse my list----------------"
puts names.reverse

puts "---------- Print me the list in the right order_________"
puts names


puts "------ ACTUAL EXERCISE -------------"
puts "---------- Print names that begin with letter a ----------"
puts names.select {|name| name.chars.first == "A"}

#"M" == "A"
#"I" == "A"
#"A" == "A"
