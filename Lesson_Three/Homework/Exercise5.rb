=begin
Given an array of student names, like `['Bob', 'Dave', 'Clive']`
Create an array with every possible pairing - in this case:
`[['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]`
=end

names = ["Claudia", "Martha", "John", "Paul"]

puts "---------- Group them in pairs ------"
puts names.combination(2).to_a

puts "------- Group them in trios -----------"
puts names.combination(3).to_a

puts "------ How many different unique pairs can you create?-------"
pairs = names.combination(2).to_a
puts pairs.count

puts "------ How many different unique trios can you create? -----------"
trios = names.combination(3).to_a
puts trios.count


=begin
a = [1, 2, 3, 4]
a.combination(1).to_a  #=> [[1],[2],[3],[4]]
a.combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
=end
