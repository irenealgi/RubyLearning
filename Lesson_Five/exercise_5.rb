def i_do_nothing()
end

i_do_nothing()

def is_even?(number)
  remainder = number % 2
  remainder == 0
end

is_3_even = is_even?(3)
puts is_3_even
is_5_even = is_even?(5)
puts is_5_even

puts is_even?(4)



=begin
def even_number?()
  results = $stdin.gets.chomp.to_i
  is_number_even = results.even?
  is_number_even
end

puts even_number?()
=end
