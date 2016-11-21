require_relative "./onfidoer"
require_relative "./groups_generator"

filename = ARGV[0]
group_num = ARGV[1].to_i

def get_lines_from(filename)
  #open file
	file = open(filename)
  # read the file (get the content of file into a string)
	text = file.read
  # return an array of lines.
  # We are splitting our string every time we find a new line
	text.split("\n")
end

# From each line we want to get the values to create a new Onfidoer
def get_params_from(line)
	values = line.split(",")
  #let's remove whitespaces
	values.map { | value | value.strip } # Tip: you can also write it like this `values.map(&:strip)`
end

# Create an onfidoer from the parameters in each line. Return an array of onfidoers (instance of the object Onfidoer)
def create_onfidoers(filename)
	lines = get_lines_from(filename)
	# iterate over each line and create a new onfidoer with the params
	lines.map do | line |
    params = get_params_from(line)
    onfidoer = Onfidoer.new(*params) # Have you ever seen this? It's called splat operator
    "#{onfidoer.first_name} #{onfidoer.last_name}"
  end
end

onfidoers = create_onfidoers(filename)

def generate_groups(onfidoers, num)
  new_groups = GroupsGenerator.new(onfidoers, num)
  new_groups.display_groups
	new_groups.save_to_csv
end

generate_groups(onfidoers, group_num)
