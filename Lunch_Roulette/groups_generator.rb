class GroupsGenerator
  def initialize(onfidoers, number)
    @onfidoers = onfidoers
    @number = number
  end

  def display_groups
    sliced_groups.each_with_index do |group, index|
      puts "Group n.#{index + 1}"
      group.each { | name | puts name }
    end
  end

  def save_to_csv
    File.open("onfidoers_by_group.csv", "w") do |file|
      sliced_groups.each do |group|
        file.write(group.join(","))
        file.write("\n")
      end
    end
  end

  private

  def sliced_groups
    shuffled_list = @onfidoers.shuffle
    groups = shuffled_list.each_slice(@number).to_a
    leftovers_number = groups.last.size

    if leftovers_number < @number
      if groups.size == 2
        groups = all_leftovers_go_to_first_group(groups)
      else
        groups = all_leftovers_go_to_different_groups(groups)
      end

      groups.delete_at(-1)
      groups
    else
      groups
    end
  end

  def all_leftovers_go_to_first_group(groups)
    groups.last.each_with_index do |person|
      groups[0] << person
    end
    groups
  end

  def all_leftovers_go_to_different_groups(groups)
    groups.last.each_with_index do |person, index|
      groups[index] << person
    end
    groups
  end
end
