#Method 1: Reading lines from a file


def get_lines_from_file(our_spreadsheet)
  students_list = open(our_spreadsheet)
  content = students_list.read
  individual_student = content.split("\n")
end

#Method 2: Parsing lines from our spreadsheet.
#We're giving a line of text from the file ("individual_student") and expect an array of columns to be created out of each "individual_student".
#e.g "Mircea, Cimpoi, Engineering" >> ["Mircea", "Cimpoi", "Engineering"].
#Each part of the array will be converted into a string, and strings will be separated by commas.
#Since some of our values ("x")(now strings within each array) ara padded with spaces, we'll be creating an empty array {[] and we'll call it "Student"}.
#We will then clean up those values ("x"), getting rid of the spaces between them with a predefined string function called "Strip"
#We'll drop the cleaned up values into our new empty array {[]}

def get_words_from_line(single_line)
  columns = single_line.split(",")
  onfidoers = []
  columns.each { |x| onfidoers << x.strip }
  onfidoers
end

#Reading our spreadsheet as first argument

filename = ARGV.first
lines = get_lines_from_file("myexcel.csv")
#puts get_words_from_line(lines[0])

#Method 3: Building a database. We'll store the arrays into a database ("database").
#To do do that, we'll start by creating an empty array "Database"
#We're going to read all the lines from our file (our_spreadsheet)
#For ach line, we'll split it into columns, which basically are arrays with values (or strings)


def build_database(filename)
  database =  []
  lines = get_lines_from_file(filename)
  lines.each { |words| database << get_words_from_line(words) }
  database
end

onfido_names = build_database("myexcel.csv")
#puts onfido_names


def get_onfidoer_join_date(filename)
  puts "What's your name?"
  name = $stdin.gets.chomp
  onfido_names = build_database(filename)
  onfidoer_info = onfido_names.select { |x| x.include?(name)}
  puts "Great, #{name}, here's your joining date:"
  onfidoer_info[0][4]
end

onfidoer_join_date = get_onfidoer_join_date("myexcel.csv")
puts onfidoer_join_date

=begin
def get_trios("myexcel.csv")
  puts "Make groups of three"
  onfido_names = build_database("myexcel.csv")
  each_onfidoer = onfido_names.each[0][0]
  each_onfidoer
end

puts get_trios("myexcel.csv")
trio = each_onfidoer.combination(3).to_a
puts trio

=end
