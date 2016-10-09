# Define a method that tells you if you can divide x number by any number
def can_be_divided_by(n1, n2)
  remainder = n1 % n2
  if remainder == 0
    puts "Yes, you can"
  else
    puts "I'm afraid not"
  end
end

#can_be_divided_by(14, 3)

#Define a method that tells you if you can divide x number by any two numbers

def can_be_divided_by(n1, n2, n3)
  number_one_remainder = n1 % n2
  number_two_remainder = n1 % n3
  if number_one_remainder == 0
    puts "Yes, you can divide by #{n2}"
  else
    puts "No, you can't divide by #{n2}"
  end
  if number_two_remainder == 0
    puts "Yes, you can divide by #{n3}"
  else
    puts "No, you can't divide by #{n3}"
  end
end

#can_be_divided_by(40, 3, 5)

#1 - Define a method that tells you if you can divide X number by 3, using just one argument

def can_be_divided_by_three(number)
  is_divisible_by_3 = number % 3
  is_divisible_by_3 == 0
end

#puts can_be_divided_by_three(30)

#2- Define a method that tells you if you can divide X number by 5, using just one argument

def can_be_divided_by_five(number)
  is_divisible_by_5 = number % 5
  is_divisible_by_5 == 0
end

#puts can_be_divided_by_five(30)

#3- Define a method that tells you if you can divide X number by 3 AND 5, using just one argument

def can_be_divided_by_three_and_five(number)
  is_divisible_by_3 = number % 3
  is_divisible_by_5 = number % 5
  is_divisible_by_3 == 0 && is_divisible_by_5 == 0
end

#puts can_be_divided_by_three_and_five(5)

#4 - Define a function that returns 'Fizz' if a number is divisible by 3, 'Buzz' if a number is divisible by 5 and it returns 'FizzBuzz' if the number is divisible by both 3 and 5.

def fizz_buzz(number)
  if can_be_divided_by_three_and_five(number)
    return "FizzBuzz" #ends method early to avoid getting the following two responses
  end
  if can_be_divided_by_three(number)
    return "Fizz"
  end
  if can_be_divided_by_five(number)
    return "Buzz"
  end
end

#puts fizz_buzz(5)

=begin
Given an array containing numbers from 0 to 30, return a new array where every number divisible by 3 has been replaced by 'Fizz',
every number divisible by 5 has been replaced by 'Buzz' and every number divisible by both 3 and 5 has been replaced by 'FizzBuzz'.
6. Can you remember a way of having all the numbers from 0 to 30 into an array without having to type each number? (Hint: Google 'ruby range')
=end

array = (1..30).to_a
expected_array = []
#array.each { |num| puts fizz_buzz(num) }
array.each { |num|
  result = fizz_buzz(num)
  if result == nil
    expected_array << num
  else
    expected_array << result
  end
}
print expected_array
