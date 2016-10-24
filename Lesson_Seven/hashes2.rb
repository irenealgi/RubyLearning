
=begin
Exercise 3 (bonus)
Given an array of arrays, covert it to an array of hashes.
Every hash should use the data within the first element of the array as keys for each of the internal hashes
For example

should return

onfido_data = [{
  'name' => 'Jack' ,
  'surname' => 'Baverstock',
  'date_joined' => '25 August 2015',
  'team' => 'RegTech',
  'job_title' => 'Ops'
},
{
  'name' => 'Alan' ,
  'surname' => 'Carrie',
  'date_joined' => '2 Februray 2016',
  'team' => 'ODT',
  'job_title' => 'Operations'
}]

=end

database_array = [
  ["name", "surname", "date_joined", "team", "job_title"],
  ["Jack", "Baverstock", "25 August 2015", "RegTech", "Ops"],
  ["Alan", "Carrie", "2 Februray 2016", "ODT", "Operations"]
]

key = database_array.first
values = database_array[1..-1]
values.map { |value| key.zip(value) }.map { |element| element.to_h }
