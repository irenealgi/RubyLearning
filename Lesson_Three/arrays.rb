puts "--------------------------"

onfidoer1 = "Stefania"
onfidoer2 = "Rid"
onfidoer3 = "Ali"

#declaring an array
onfidoers = ["Stefania", "Rid", "Ali"]
puts onfidoers

puts "--------------------------"

favourite_numbers = [1, 2, 3, 4, 5]
puts "My favourite numbers #{favourite_numbers}"

my_grades = [8.7, 4.5, 9.30]
puts "My grades #{my_grades}"

puts "--------------------------"

#here's our numbers in reverse order
reordered = favourite_numbers.reverse
puts "here are my numbers reordered #{reordered}"

puts "--------------------------"

#here's an empty array - away of representing an 'empty box'
empty_array = []
puts "here's an empty array #{empty_array}"

puts "-----------------------"

#To read the first element in an awway
first_element = onfidoers[0]
puts first_element

puts "-----------------------"

second_element = onfidoers[1]
puts second_element

puts "---------------------"

third_element = onfidoers[2]
puts third_element

puts "--------------------"

#To add an element
onfidoers << "Laura"
puts onfidoers

puts "-------------------"

#and with a variable
new_onfidoers = "Daniel"
onfidoers << new_onfidoers
puts onfidoers

puts "-------------------------"

#To delete an item
onfidoers.delete_at(0)
puts onfidoers

puts "-------------------"
onfidoers.delete_at(1)
puts onfidoers

puts "----------------------"
#spliting an array
sentence = "This is a sentence"
words = sentence.split(" ")
puts words
