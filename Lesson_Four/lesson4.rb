#Read fuke name as first argument

filename = ARGV.first

#Get file named 'lines', open it, read it and split it into separate lines
def get_file_lines(archivo)
  file = open(archivo)
  text = file.read
  text.split("\n")
end

puts get_file_lines(filename)

# "-------------- Parse (read through and process) lines from file ------"
# "----- Input: line of text from the file ------ "
# "----- Output: array of columns / fields from the lines ------"
# '---Example: "Mircea, Cimpoi, Engineering, IDV, 02/02/2016" -----'
# '---- --> ["Mircea", "Cimpoi", "Engineering", "IDV", "02/02/2016"] ----''

#

def parse_csv_line(text_line)
  columns = text_line.split(",")
  values = columns.each { |x| values << x.strip }
end

#puts get_file_lines(filename)
#Check the return type
#puts get_file_lines(archivo).class

lines = get_file_lines(filename)
puts parse_csv_line(lines[0])

# Input: filename
# Output:
# Array of arrays
# [
# "Micea", "Compi", ....       ]
# ["Stefania", "Cardenas", ...]
# ......
# []
# ]

def build_database(filename)
  #Store the arrays in db
  db = []
  # Read all the lines from the file
  lines = get_file_lines(filename)
  #For each line, split it into columns (array of values)
  lines.each { |each_line| db << parse_csv_line(each_line) }
  return db
end




def find_my_join_date(first_name, last_name)
  return joined_date
end
