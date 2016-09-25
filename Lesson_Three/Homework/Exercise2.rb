=begin
Given an array, return a new array containing only the elements that starts with a vowel
`["john", "david", "omar", "fred", "idris", "angela"]` should return `["omar","idris", "angela"]`
=end

names = ["Claudia", "Martha", "Irene", "Anna", "Louise", "Alicia", "Corrie", "Iris"]
vowels = ["A", "E", "I", "O", "U"]

puts "----------- Which have a vowel as a first letter ----------"

puts names.select { |name| vowels.include?(name.chars.first) }


=begin
vowels.include?("C")
vowels.include?("M")
vowels.include?("I")
vowels.include?("A")
vowels.include?("L")
=end

puts "--------- Which have L or R as a second letter -----------"

letters = ["l", "r"]
puts names.select { |name| letters.include?(name.chars[1])}

puts "Now give me those with an L as second place first, and then the other two with the R --------"

puts names.select { |name| "l".include?(name.chars[1]) }
puts names.select { |name| "r".include?(name.chars[1]) }

puts "---- This is good, but not neat. Be a decent gal and give them to me in just one array, please ------"
l = names.select { |name| "l".include?(name.chars[1]) }
r = names.select { |name| "r".include?(name.chars[1]) }
puts l.concat r

puts "-------Now give me the names in alphabetical order---------"
puts names.sort
