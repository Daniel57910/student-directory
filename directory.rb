def print_header
  puts "The students of Villians Academy"
  puts "-----------------"
end

def print_students(students)
  students.map { |student, month| puts "#{student} (#{month} cohort)" }
  #each enumerable represents row in array
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
  #count enumerable unlike length, eg count array for names beginning in "T"
end

students = [
  ["Dr. Hannibal Lecter", :november],
  ["Darth Vader", :november],
  ["Nurse Ratched", :november],
  ["Michael Corleone", :november],
  ["Alex DeLarge", :november],
  ["The Wicked Witch of the West", :november],
  ["Terminator", :november],
  ["Freddy Krueger", :november],
  ["The Joker", :november],
  ["Joffrey Baratheon", :november],
  ["Norman Bates", :november]
]

print_header
print_students(students)
print_footer(students)
