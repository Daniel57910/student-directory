@students = []

TBD = "TBD"
CORRECT = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

#method for printing header
def print_header
  puts "The students of Villians Academy"
  puts "-----------------"
end

#method for printing footer
def print_footer
  puts "Overall, we have #{@students.count} great students"
  #count enumerable unlike length, eg count array for names beginning in "T"
end

#method for formatting student information
def print_wrap(current, i)
  info = (i + 1).to_s.concat(". #{current[:name]} is #{current[:age]} years old and #{current[:height]} cm tall. #{current[:name]}'s hobbies are #{current[:hobbs]}. They are part of the #{current[:cohort]} cohort.")

  info.center(info.length + 5)
  #center > than length of string or string returned
end

#method for ensuring correct cohort entered
def correct_cohort(cohort)

  cohort = gets.chomp
  cohort = TBD if cohort.empty?

  loop do 
    break if CORRECT.include?(cohort.capitalize) or cohort == TBD
    puts "Enter a correct month"
    cohort = gets.chomp
  end

  cohort
end

#method for printing students
def print_students
  i = 0
  while i < @students.length
    current = @students[i]
    puts print_wrap(current, i)
    i += 1
  end
end

#method for sorting students by cohort
def sort_by_cohort

  @students.sort_by! {|student| student[:cohort]}
end

#method for obtaining student information
def input_students

  count = 0
  @students = []
  puts "Please enter the following student information"
  puts "To finish, just hit return twice"
  name = "ENTER"

  loop do
    puts "Enter the name"
    name = gets.chomp
    break if name.empty?
    puts "Enter the cohort"
    cohort = correct_cohort(cohort)
    puts "Enter your height"
    height = gets.chomp
    puts "Enter your age"
    age = gets.chomp
    puts "Enter your hobbies"
    hobbs = gets.chomp
    @students << {name: name, cohort: cohort, height: height, age: age, hobbs: hobbs}
    if count == 0
      puts "Now we have #{@students.count} student"
    else
      puts "Now we have #{@students.count} students"
    end
    count += 1
  end

  @students
end

def save_students

file = File.open("cases.csv", "w")
#writes data to cases.csv file

  @students.each do |student|
    data = student
    csv_line = student.to_a.join(",")
    file.puts csv_line
    #saves data to each csv line/row of file
  end
  file.close

end
#driver method for getting information
def interactive_menu
  puts "here is the menu for the student directory"
  loop do
    puts "1: input student information"
    puts "2: show student information"
    puts "9: exit the program"
    selection = gets.chomp
    case selection
      when "1"
        @students = input_students
        @students = sort_by_cohort
      when "2"
        print_header
        print_students
      when "9"
        save_students
        print_footer
      else
        puts "I don't know what you mean, try again"
    end
    break if selection == "9"
  end
end

interactive_menu
     




