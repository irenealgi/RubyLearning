=begin
2) Write a method which, for a given number, print the multiplication table with the numbers from 0 to 10 and the input number
example:
print_multiply_table(10):
0 x 10 = 0
1 x 10 = 10
2 x 10 = 20
...
10 x 10 = 100
=end

def print_multiply_table
  puts "Which number would you like to multiply?"
  n = $stdin.gets.chomp.to_i
  for each_number in 1..10 do
    puts "#{each_number} x #{n} = #{each_number * n}"
  end
end

print_multiply_table
