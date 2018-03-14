def print_header
  puts "The students of Villians Academy"
  puts "-----------------"
end

def print_students(students)
  students.map { |student| puts student }
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]


print_header
print_students(students)
print_footer(students)
