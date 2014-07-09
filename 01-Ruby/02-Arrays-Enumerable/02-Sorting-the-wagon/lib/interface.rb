require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name
  print name

  # TODO: Add the name we just gotto the students array

end while name != ""

sorted_students=wagon_sort(students)

#afficher le congrats message#
if sorted_students==1
  congrats_message = "Congratulations, your wagon has 1 student!"
else "congratulations, your wagon has #{student_list.size} students!"
end

puts congrats_message






# TODO: Call `wagon_sort` method and display the sorted student list
