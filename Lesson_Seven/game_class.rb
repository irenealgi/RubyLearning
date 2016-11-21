class Room
  def initialize(room_information)
    @room_information = room_information
  end

  def room_information
    @room_information
  end
end

fire_door = Room.new({
  name: "Fire Door",
  character: "Gunter, the Evil Penguin of Tech Support",
  character_action: "He has casket full of tech support tickets",
  decision_one: "Take the a casket and destroy the tickets",
  outcome_one: "Well done! You are now the king of Tech Support",
  decision_two: "Slap that creepy penguin",
  outcome_two: "You fool. The curse of tech support is on you. You will have to fix every ticket for the Eternity!"
})

snow_door = Room.new({
  name: "Snow Door",
  character: "Princess Bubblegum, the Beautiful Princess of Sainsbury deliveries",
  character_action: "She has a bucket full of BelaVita biscuits",
  decision_one: "Eat the buscuits",
  outcome_one: "You fool! Neusha will tell Eamon and he will fire you!",
  decision_two: "Save them for Shakes",
  outcome_two: "The force runs strong with this one. You have saved Shakes from starvation!"
})



# Data


#Introducing the game. We'll run this first.

def start_greetings
  puts "This is the castle of the Ice King. At the end of the corridor there are two doors"
  puts "Thau shall choose to go through one door, the Fire Door or the Snow Door"
  puts "Press 1 for Fire Door. Press 2 for Snow Door"
end

#This is how the game starts. We'll run this second.

def start_game
  doors = {
    "1" => fire_door.room_information,
    "2" => snow_door.room_information
  }

  print "> "
  door_num = $stdin.gets.chomp
  chosen_door = doors[door_num]
  puts "____________________________"
  game(chosen_door)
end

#This is the game's set up. We'll be calling this method when we start the game, after the user has made their first decision.

def game(chosen_door)
  if chosen_door
    puts "You have entered the #{chosen_door[:name]}"
    puts "You now have to face #{chosen_door[:character]}"
    puts "#{chosen_door[:character_action]}"
    puts "What are you going to do?"
    puts "1. #{chosen_door[:decision_one].upcase}"
    puts "2. #{chosen_door[:decision_two].upcase}"

    print "> "
    decision = $stdin.gets.chomp

    puts "_________________________"

    if decision == "1"
      puts chosen_door[:outcome_one].upcase
    elsif decision == "2"
      puts chosen_door[:outcome_two].upcase
    else
      handle_typos(chosen_door)
    end
  else
    handle_typos(chosen_door)
  end
end

# We'll use this method to handle any answers that are not "1" or "2"

def handle_typos(chosen_door)
  puts "Man you should take a proper decision or learn how to type!"
  puts "If you want to restart the game, press 1"
  puts "If you want to try again, press 2"
  puts "If you happen to be a coward, press 3 and quit this stupid game now. No regrets"
  decision = $stdin.gets.chomp
  if decision == "1"
    puts "Hooray! Let's start from scratch"
    start_greetings
    start_game
  elsif decision == "2"
    puts "OK, let's try again. You can do this!"
    # Skipping the greetings
    start_game
  elsif decision == "3"
    puts "Quiting is sad man. But, hey, your game, your rules! Bye bye"
  else
    handle_typos(chosen_door)
  end
end

# Calling methods to Introduce the Game and Start the Game

start_greetings
start_game
