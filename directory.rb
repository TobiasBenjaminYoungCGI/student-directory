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
#first print the list of students
puts "THe Students of Villains Academy"
puts "-------------------"
students.each do |student|
  puts students
end
# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"
