filename = ARGV.first

#puts "Type the filename : "
#filename = $stdin.gets.chomp

file = open(filename, "a")
file.write("hello this is a new line\n")
file.close

file = open(filename, "r")
puts file.read
file.close
