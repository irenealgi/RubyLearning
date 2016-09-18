=begin
rescue ExceptionName
endputs "first option"
from_file = $stdin.gets.chomp
puts "second option"
to_file = $stdin.gets.chomp
=end
from_filename, to_filename = ARGV

puts "Copying from #{from_filename} to #{to_filename}"
source = open(from_filename, "r")
novel = source.read
source.close

final = open(to_filename, "a")
final.write(novel)
final.close

final = open(to_filename, "r")
puts final.read
final.close
