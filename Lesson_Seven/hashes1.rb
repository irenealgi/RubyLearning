=begin

Convert an array of arrays to a hash. It should return {"cow"=>"mu", "cat"=>"meow", "dog"=>"wof"}
animals = [["cow", "mu"], ["cat", "meow"], ["dog", "wof"]]

=end

#animal_sounds = [["cow", "mu"], ["cat", "meow"], ["dog", "wof"]]
#animal_sounds_hash = animal_sounds.to_h
#print animal_sounds_hash

=begin

Assign the hash to a variable
For each key/value pair in the hash print both the key and the value.
You should see a string like "The cow call is mu"

=end
def tell_me_sounds
  animal_sounds = [["cow", "mu"], ["cat", "meow"], ["dog", "wof"]]
  animal_sounds_hash = animal_sounds.to_h
  animal_sounds_hash

  animal_sounds_hash.each do |animal, sound|
    puts "The #{animal}'s call is #{sound}"
  end
end

tell_me_sounds
