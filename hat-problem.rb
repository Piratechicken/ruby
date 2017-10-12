def change_hat_if(student, index, n)
  if (index+1)%n == 0
    if student == "hat_on"
      student = "hat_off"
    elsif student == "hat_off"
      student = "hat_on"
    end
  else
    student = student
  end
end

# Number of students and create array
students = 100
hat_array = Array.new(students) {|i| "hat_on" }
puts hat_array.inspect

# Iterate through the same number of times as there are students
n = 1
students.times do
  hat_array.map!.with_index { |student,index| change_hat_if(student,index,n) } 
  n=n+1
end

puts hat_array.inspect
puts "Number of no-hatted students = #{hat_array.count("hat_off")}"