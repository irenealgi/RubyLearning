=begin
Given an array, return a new array by discarding the first 3 elements of the original array
e.g. `[1, 2, 3, 4, 5, 6]` becomes `[4, 5, 6]`
=end

numbers = [1, 2, 3, 4, 5, 6]

puts numbers.drop(3)

#OR

puts numbers.drop_while { |num| num < 4 }
