=begin
Implement your own my_split_method(...) which splits a string at spaces
input: "Mircea loves to code" --> ["Mircea", "loves", "to", "code"]
(without using string.split() )
=end

def split_words
  puts "What's your sentence"
  sentence = $stdin.gets.chomp
  result = []
  word = ""

  sentence.each_char do |character|
    if character != " "
      word << character
    else
      result << word
      word = ""
    end
  end
  result << word
  result
end

print split_words
puts
