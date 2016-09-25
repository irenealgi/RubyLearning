#iterators – they allow you to iterate through an array: do one thing over and over and over again.
#We use a block
onfidoers = ["Stefania", "Rid", "Ali", "Cristina", "Daniel"]

onfidoers.each { |onfidoer| puts "onfidoer name: #{onfidoer}"}

menu = ["Pizza", "Ravioli", "Risotto"]
menu.each { |dish| puts "Ciao, the dish of the day is #{dish}"}

#Blocks can be multiple lines
onfidoers.each do |onfidoer|
  puts "Hello, what's your name?"
  puts "Onfidoer name: #{onfidoer}"
end
