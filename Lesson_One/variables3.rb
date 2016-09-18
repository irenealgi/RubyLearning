print "What's your name?\n"
name = gets.chomp
puts "Name: #{name.downcase}"

=begin
print "What's your job title?\n"
job_title = gets.chomp

print "What's your team name?\n"
team = gets.chomp

print "How long have your worked at Onfido?\n"
seniority = gets.chomp

print "Are you interested in joining Lunch roulette?\n"
availability = gets.chomp

puts "***** Output my nice result *****"

puts "Attendee name: #{name}"
puts "Job title: #{job_title}"
puts "Team: #{team}"
puts "Seniority: #{seniority}"
puts "Availability: #{availability}"

puts "Attendee name: #{name.capitalize!}"
puts "Job title: #{job_title.capitalize}"
=end
