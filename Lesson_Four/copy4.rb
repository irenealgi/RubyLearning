file_name = ARGV.first
def get_file_lines(file_name)
  file = open(file_name)
  text = file.read
  lines = text.split("\n")
  return lines
end
lines = get_file_lines(file_name)
puts lines

def parse_csv_line(line)
  columns = line.split(",")
  values = columns.each {|column| column.strip}
  return values
end
first_line = lines[0]
puts parse_csv_line(first_line)

data_base = []
lines.each do |line|
  columns = parse_csv_line(line)
  data_base << columns
end

puts data_base

require “csv”
CSV.foreach(filename.csv) do |row|
  puts "#{row}"
end
