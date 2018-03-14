
def print_header
  puts "The students of Villians Academy"
  puts "-----------------"
end

def print_students(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    #selects specific value in hash
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
  #count enumerable unlike length, eg count array for names beginning in "T"
end

def input_students

  students = []
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  name = gets.chomp

  until name.empty? 
    students << {name: name, cohort: :november}
    #name: name of hash key, :november symbol/static that immutable
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  students

end

students = input_students
print_header
print_students(students)
print_footer(students)