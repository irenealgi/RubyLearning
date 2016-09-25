=begin
Given an array of numbers, return a new array containing two arrays of numbers, one an array of even numbers and an array of odd numbers. Even numbers should come first
so `[1, 2, 3, 4, 5, 6]` should return `[[2, 4, 6], [1, 3, 5]]`
=end

numbers = [1, 2, 3, 4, 5, 6]
even = numbers.select {|num| num.even? }
odd = numbers.select {|num| num.odd? }
puts even.concat odd
