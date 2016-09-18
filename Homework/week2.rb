
require 'io/console'

line1 = "Machine says: Hi, what's your name?"
puts line1
name = $stdin.noecho(&:gets).chomp
line2 = "I say: My name is #{name}, nice to meet you"
puts line2

line3 = "Machine says: Hello #{name}, nice meeting you too. How old are you?"
puts line3
age = $stdin.noecho(&:gets).chomp
line4 = "I say: I'm #{age}"
puts line4

line5 = "Machine says: Wow, that's young! And where are you from?"
puts line5
country = $stdin.noecho(&:gets).chomp
line6 = "I say: I'm from #{country}. And yourself?"
puts line6
line7 = "Machine says: I'm a machine, #{name}. I live in the cloud."
puts line7

interview = line1, line2, line3, line4, line5, line6, line7
interview_reverted = interview.reverse!.join("\n")

file = open("week2.txt", "w")
file.write(interview_reverted)
file.close


#----------------------------------------------- testing
=begin
copyinterview.write(interview)
copyinterview.close
=end


=begin
interview = open("week2.txt", "a")
interview.write(line1)
interview.write(line2)
interview.write(line3)
interview.write(line4)
interview.write(line5)
interview.write(line6)
interview.write(line7)
interview.close
=end
