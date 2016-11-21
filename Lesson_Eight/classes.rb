class Dog
  def initialize (breed, name)
    @breed = breed
    @name = name
  end

  def display
    puts "Hello! I am #{@name} and I'm a #{@breed}"
  end

  def go_sleep
    puts "What time is it?"
    time = $stdin.gets.chomp
    if time > 9
      puts "Ok, let's play some more"
    else
      puts "#{@name} goes to bed"
    end
end

my_dogs = []
my_first_dog = Dog.new("sausage dog", "Toby")
my_second_dog = Dog.new("golden retriever", "Spot")

my_dogs << my_first_dog
my_dogs << my_second_dog

my_dogs.each do |dog|
  dog.go_sleep
  puts dog
end

puts "=" * 30
