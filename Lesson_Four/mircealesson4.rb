# Read file name as first argument
filename = ARGV.first

# Read lines from file
def get_file_lines(file_name)
   file = open(file_name)
   text = file.read
   lines = text.split("\n")
   return lines
end

=begin
Parse lines from file
Input: line of text from the file
Output: Array of columns / fields from the line
Example: "Mircea, Cimpoi, Engineering, IDV, 02/02/2016" -->
["Mircea", "Cimpoi", "Engineering", "IDV", "02/02/2016"]
=end

def parse_csv_line(text_line)
    # Split the text_line by comma
    columns = text_line.split(",")
    # But some of the values are padded with spaces
    # Create an empty array
    values = []
    # And add the cleaned up values to the new array (called values)
    # strip --> predefined string function which trims spaces
    columns.each {|x| values << x.strip}
    return values
end

=begin
puts get_file_lines(filename)
Check the return type
puts get_file_lines(filename).class
=end

lines = get_file_lines(filename)
puts parse_csv_line(lines[0])

=begin
Input: filename
Output:
Array of arrays
[
[ "Mircea", ... ]
[ "Stefania", "Cardenas", ...]
    ....
    []
 ]
=end

def build_database(filename)
    # Store the arrays in db
    db = []
    # Read all the lines from the file
    lines = get_file_lines(filename)
    # For each line, split it into columns (array of values)
    lines.each {|x| db << parse_csv_line(x) }
    return db
end

=begin
Homework!
Search for first name and last name in db
And return the joined_date
=end

def find_my_join_date(db, first_name, last_name)
    return joined_date
end

# Bonus points:
# Print groups of 3 people

puts build_database(filename)
