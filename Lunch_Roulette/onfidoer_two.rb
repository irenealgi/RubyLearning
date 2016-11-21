require 'date'

class Onfidoer

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name, team, dept, join)
	  @first_name = first_name
	  @last_name = last_name
	  @join_date = join
	  @team = team
	  @dept = dept
  end

  def display_name
	  # \t = tab
	  puts "#{@first_name}\t#{@last_name.upcase}"
  end

  # display other attributes

  def how_long_with_company
    join_date = Date.parse(@join_date)
    current_date = Date.today
    (current_date - join_date).to_i
  end

  def year_joined
    puts @join_date
	  date = Date.parse(@join_date)
    date.year
  end
end

# Read onfidoers.csv
# Create an instance of Onfidoer for every row from CSV
# and store it in an array
