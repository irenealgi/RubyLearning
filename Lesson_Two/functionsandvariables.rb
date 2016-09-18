def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
  puts "arg1; #{arg1}"
end

def print_none()
  puts "I got nothing."
end

=begin
print_two("Zed", "Shaw")
print_two_again("Zed", "Shaw")
print_one("First!")
print_one("Uno!")
print_none()
=end

def get_name
  return "Irene"
end

def add(a, b)
  puts "How are you?"
  puts "I'm going to add #{a} plus #{b}"
  return a + b
end

sum = add(1, 3)
puts "uhuuuh the resut is #{sum}"
