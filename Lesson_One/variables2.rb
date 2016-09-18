sandwich_number = 5
chocolate_number = 3
total_calories = 700
calories_burnt = 300
total_allowance = 1200

puts "I ate #{sandwich_number} sandwiches. Then #{chocolate_number} chocolate bars"
puts "That must be about #{total_calories} calories!"
puts "Then I went to the gym and burnt #{calories_burnt}"
puts "That means I had an intake of #{total_calories - calories_burnt}."
print "Is it less than #{total_allowance}?"
puts " #{total_calories - calories_burnt < total_allowance}" .upcase
puts "Let's have more chocolate!"
