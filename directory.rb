#first put the students into an array
students = [
 "Henry Lecter",
 "Luke Vader",
 "The Troubled Wicken of the Southwest",
 "Disruptinator",
 "Frederic Kreuger",
 "The Chuckler",
 "Norma Bates",
 "BoJo",
 "The Dust Man"
]
def print_header
  puts "The Students of Villains Academy"
  puts "-------------------"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count}"
end

print_header
print(students)
print_footer(students)
