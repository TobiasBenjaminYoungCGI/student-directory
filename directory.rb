def print_header
  puts "The Students of Villains Academy"
  puts "-------------------"
end

def print(students)
#   cohort_list = []
#   students.each do |student|
#     cohort = student[:cohort].to_s
#     if !(cohort_list.include?(cohort))
#       cohort_list.push(cohort)
#     end
#   end
#   cohort_list.each do |cohort|
#     puts "Students from the #{cohort} cohort:"
#     students.each do |student|
#       if student[:cohort].to_s.include?(cohort)
#         puts student[:name]
#       end
#     end
#   end
# end
  t = 0
  i = 0

  students.each do |student|
    # while i < students.length
    # if (student[:name])[0] == "s" <- Exercise 2, filter by first letter
    # if (student[:name]).length < 12
    puts "
    #{i += 1}.
    Student Name: #{student[:name]}
    Cohort:#{student[:cohort]}
    Hobby: #{student[:hobbies]}
    Birth Place: #{student[:birthPlace]}
    Height: #{student[:height]}
    "
    # puts "#{t += 1} #{(students[i][:name])}"
    end
    i += 1
  end

def print_footer(names)
  if names.count == 0
    puts "Strange, no students"
    return
  end
  string = "Overall, we have #{names.count} student"
  if names.count > 1
    ess = "s"
    string += ess
  end
  puts string
end

def input_students
  puts "please enter student name"
  name = gets.strip

  students = []
#strip alternate to chomp
  while !name.empty? do

    puts "please enter cohort"
      cohort = gets.strip
    if cohort.empty?
      puts "Cohort set to default of November"
      cohort = "November"
    end
      cohort.to_sym
    puts "please enter hobby"
      hobby = gets.strip
    puts "please enter birthplace"
      birth = gets.strip
    puts "please enter height"
      height = gets.strip
    puts "To finish press return twice"

    students << {
      name: name,
      cohort: cohort,
      hobbies: hobby,
      birthPlace: birth,
      height: height
      }
      string = "Now we have #{students.count} students"
      if students.count > 1
        ess = "s"
        string += ess
      end
      puts string
      name = gets.strip
    end
  students
end

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2.Show the students"
    puts "9. Exit"

    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you mean, ask again"
    end
  end
end


students = input_students
