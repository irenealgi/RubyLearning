require "date"

class Onfidoer
  def initialize(first, last, team, dept, join_date)
    @first = first
    @last = last
    @team = team
    @dept = dept
    @join_date = join_date
  end

  def full_name
    "#{@first} #{@last}"
  end

    def days_at_onfido #{}"2016-02-02" ==> 2016, 02, 02
    join_date = Date.parse(@join_date)
    current_date = Date.today
    days_at_onfido = (current_date - join_date).to_i
  end

  def year_joined
    #all dates are in the same format in the CSV file: dd/mm/yyyy
    year = @join_date[0..3]
  end

end


onfidoers = []

File.readlines("onfidoers.csv").each do |line|
  onfidoer_data = line.split(", ")
  onfidoers << Onfidoer.new(*onfidoer_data)
end

onfidoers.each { |e| puts e.days_at_onfido }

#Read onfidoers.CSV#Create instance of Onfidoer for every row from CSV and store it in an array

#require_relative "./onfidoer"
#myself = Onfidoer.new("Mircea", "Cimpoi", "2016-02-02", "Research", "Engineering")
#myself.display

#file = File.new("onfidoers.csv")
#file.build_database
