
def print_header
  puts "The students of Villians Academy"
  puts "-----------------"
end

def print_wrap(current, i)
  info = (i + 1).to_s.concat(". #{current[:name]} is #{current[:age]} years old and #{current[:height]} cm tall. #{current[:name]}'s hobbies are #{current[:hobbs]}. They are part of the #{current[:cohort]} cohort.")

  info.center(info.length + 5)
  #center > than length of string or string returned
end

def print_students(students)
  i = 0
  while i < students.length
    current = students[i]
    puts print_wrap(current, i)
    i +=1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
  #count enumerable unlike length, eg count array for names beginning in "T"
end

def input_students

  students = []
  puts "Please enter the following student information"
  puts "To finish, just hit return twice"

  name = "ENTER"

  until name.empty? 
    puts "Enter the name"
    name = gets.chomp
    puts "Enter the cohort"
    cohort = gets.chomp
    puts "Enter your height"
    height = gets.chomp
    puts "Enter your age"
    age = gets.chomp
    puts "Enter your hobbies"
    hobbs = gets.chomp


    students << {name: name, cohort: cohort, height: height, age: age, hobbs: hobbs}
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