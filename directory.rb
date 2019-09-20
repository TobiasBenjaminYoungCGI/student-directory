


@students = []

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry #{filename} doesn't exist."
    exit
  end
end

def print_header
  puts ""
  puts "The Students of Villains Academy"
  puts "-------------------"
end

def print_student_list
#   cohort_list = []
#   @students.each do |student|
#     cohort = student[:cohort].to_s
#     if !(cohort_list.include?(cohort))
#       cohort_list.push(cohort)
#     end
#   end
#   cohort_list.each do |cohort|
#     puts "Students from the #{cohort} cohort:"
#     @students.each do |student|
#       if student[:cohort].to_s.include?(cohort)
#         puts student[:name]
#       end
#     end
#   end
# end
  t = 0
  i = 0
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
      cohort = STDIN.gets.strip
    if cohort.empty?
      puts "Cohort set to default of November"
      cohort = "November"
    end
      cohort.to_sym
    puts "please enter hobby"
      hobby = STDIN.gets.strip
    puts "please enter birthplace"
      birth = STDIN.gets.strip
    puts "please enter height"
      height = STDIN.gets.strip
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
      name = STDIN.gets.strip
    end
end

def print_menu
  puts "1.Input the students"
  puts "2.Show the students"
  puts "3.Save the list to a file"
  puts "4.Open existing records from file"
  puts "9.Exit"
  puts ""
end

def show_students
  print_header
  print_student_list
  print_footer
end

def save_students
  file = File.open("students.csv", "w")
  # iterate over the array
  @students.each do |student|
    student_data = [
      student[:name],
      student[:cohort],
      student[:hobbies],
      student[:birthPlace],
      student[:height]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  puts "File......saved"
  file.close
end

def load_students(filename = "student.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort, hobbies, birthPlace, height = line.chomp.split(",")
    @students << {
      name: name,
      cohort: cohort.to_sym,
      hobbies: hobbies,
      birthPlace: birthPlace,
      height: height
    }
  end
  puts "File loaded"
  file.close
end

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you mean, ask again"
  end
end
def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

try_load_students
interactive_menu
