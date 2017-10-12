require 'date' # allows the Date class
require 'pry'

class Student

  attr_accessor :first_name, :last_name, :country_of_birth, :gender, :dob, :distinguishing_features, :courses, :iq

  def initialize(first_name, last_name) # required instance vars
    @first_name = first_name
    @last_name = last_name
    @courses = []
  end

  def add_courses(course)
    @courses << course
    course.students << self
  end

  def remove_course(course)
    @courses.delete(course)
    course.students.delete(self)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end # Student

class Teacher 

  attr_accessor :first_name, :last_name, :skills, :courses_taught

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @courses_taught = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_courses(course)
    @courses_taught << course
    course.teachers << self
  end

end # Teacher

class Course
  
  attr_accessor :course_name, :course_code, :teachers, :required_iq, :start_date, :month_count, :students
  
  def initialize
    @students = []
    @teachers = []
  end

  def add_deets(course)
    @course_name = course[:course_name]
    @course_code = course[:course_code]
    @required_iq = course[:required_iq]
    @start_date = course[:start_date]
    @month_count = course[:month_count]
  end
    
  def end_date
    start_date = @start_date
    length = @month_count
    start_date.next_month(length)
  end

end # Course

pat = Teacher.new('Patrick', 'Smith')
pat.skills = 'IT'

bev = Teacher.new('Beverly', 'White')
bev.skills = 'knitting'

baz = Teacher.new('Barry', 'Hall')
baz.skills = 'football'

courses = [
  {
  course_name: 'Diploma of IT',
  course_code: 'FT004', 
  required_iq: 160, 
  start_date: Date.new(2017, 9, 1), 
  month_count: 6
},
  {
  course_name: 'Bachelor of Knitting',
  course_code: 'KN002', 
  start_date: Date.new(2017, 8, 1), 
  month_count: 24
},
  {
  course_name: 'Certificate in Plumbing',
  course_code: 'PL008', 
  required_iq: 100, 
  start_date: Date.new(2017, 8, 15), 
  month_count: 3
}
]

# Create courses from hashes
fast_track = Course.new
fast_track.add_deets(courses[0])

knitting = Course.new
knitting.add_deets(courses[1])

plumbing = Course.new
plumbing.add_deets(courses[2])

binding.pry

# Add Pat
[fast_track, knitting, plumbing].each do |course|
  pat.add_courses(course)
end

# Add Bev
[knitting, plumbing].each do |course|
  bev.add_courses(course)
end

# Add Baz
[plumbing].each do |course|
  baz.add_courses(course)
end

mary = Student.new('Mary', 'Poppins')

mary_courses = [fast_track, knitting, plumbing]
  
mary_courses.each do |course|
  mary.add_courses(course)
end

don = Student.new('Don', 'Bradman')
don_courses = [knitting, plumbing]

don_courses.each do |course|
  don.add_courses(course)
end

def list_students(course)
  puts "The students studying #{course.course_name} (#{course.course_code}) are: "
  
  course.students.each do |student|
    puts student.full_name
  end
end

def list_teachers(course)
  puts "The teachers for #{course.course_name} (#{course.course_code}) are: "
  
  course.teachers.each do |teacher|
    puts teacher.full_name
  end
end

def list_student_courses(student)
  puts "#{student.full_name}'s courses are: "
  
  student.courses.each do |course|
    puts course.course_name
  end
end


puts ''
list_students(plumbing)
puts ''
list_teachers(plumbing)
puts ''
list_student_courses(mary)
puts ''

# students = [
#   student0 = {
#     first_name: 'Mary', 
#     last_name: , 
#     country_of_birth: 'NZ', 
#     gender: 'F', 
#     dob: , 
#     distinguishing_features: , 
#   },
#   student1 = {

#   }
# ]

# mary = Student.new('Mary', 'Poppins')

# puts mary.first_name
# puts mary.last_name
# puts mary.country_of_birth.inspect

# mary.course = fast_track
# puts mary.course.end_date


# puts ''

# don = Student.new('Dan', 'Bradman')
# puts don.first_name
# puts don.last_name
# puts don.country_of_birth.inspect

# don.course = fast_track
# dons_course = don.course
# puts dons_course.end_date





# fast_track = Course.new
# fast_track.name = 'Diploma of IT'
# fast_track.course_code = 'FT004'
# fast_track.start_date = Date.new(2017, 9, 1)
# fast_track.month_count = 6

# puts mary.course_start_date.inspect
# mary.country_of_birth = 'NZ' # mary.country_of_birth=('NZ')
# mary.course_start_date = Date.new(2017, 9, 1)
# puts mary.country_of_birth
# puts mary.course_start_date
# puts mary.course_month_count = 6
# puts mary.course_end_date

# puts don.course_start_date.inspect
# don.country_of_birth = 'AUS' # don.country_of_birth=('NZ')
# don.course_start_date = Date.new(2017, 9, 1)
# puts don.country_of_birth
# puts don.course_start_date
# puts don.course_month_count = 8
# puts don.course_end_date

# mary_and_don_have_same_course = mary.course == don.course

# if mary_and_don_have_same_course
#   puts 'same'
# else 
#   puts 'different'
# end