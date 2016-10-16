=begin
Implement a join function which takes as parameters an array of strings and a separator (" "), and returns the strings joined by the separator. Example: my_join (["x", "y", "z"], "+") should return "x + y + z" (edited)
(without using array.join)
=end


def separating
  strings = ["car", "train"]
  string_one = strings[0]
  string_two = strings[1]
  string_one.concat(" + ")
  final_string = string_one << string_two
  print final_string
end

separating

def separating_two
  strings = ["car", "train", "bus"]
  string_of_strings = ""
  strings.each do |string|
    string.concat(" + ")
    string_of_strings << string
  end
  print new_array
end

separating_two


def with_multiplication
  disjoined_array = ["hello", "goodbye"]
  disjoined_array * " + "
end

#print with_multiplication
