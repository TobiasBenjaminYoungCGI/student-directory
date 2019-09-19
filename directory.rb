


@students = []

def print_header
  puts "The Students of Villains Academy"
  puts "-------------------"
end

def print_student_list
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
# i = 0
  @students.each do |student|
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

def print_footer()
  if @students.count == 0
    puts "Strange, no students"
    return
  end
  string = "Overall, we have #{@students.count} student"
  if @students.count > 1
    ess = "s"
    string += ess
  end
  puts string
end

def input_students
  puts "please enter student name"
  name = gets.strip
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

    @students << {
      name: name,
      cohort: cohort,
      hobbies: hobby,
      birthPlace: birth,
      height: height
      }
      string = "Now we have #{@students.count} students"
      if @students.count > 1
        ess = "s"
        string += ess
      end
      puts string
      name = gets.strip
    end
end

def print_menu
  puts "1.Input the students"
  puts "2.Show the students"
  puts "9.Exit"
end

def show_students()
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you mean, ask again"
  end
end
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu
