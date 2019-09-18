#first put the students into an array
# students = [
#  {name: "Henry Lecter", cohort: :november},
#  {name: "Luke Vader", cohort: :november},
#  {name: "The Troubled Wicken of the Southwest", cohort: :november},
#  {name: "Disruptinator", cohort: :november},
#  {name: "Frederic Kreuger", cohort: :november},
#  {name: "The Chuckler", cohort: :november},
#  {name: "Norma Bates", cohort: :november},
#  {name: "BoJo", cohort: :november},
#  {name: "The Dust Man", cohort: :november}
# ]
def print_header
  puts "The Students of Villains Academy"
  puts "-------------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count}"
end




def input_students
  puts "please enter student names"
  puts "To finish hit return twice"

  students = []

  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  students
end

students = input_students
print_header
print(students)
print_footer(students)
