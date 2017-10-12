people = [
  sally = {
    first_name: 'Sally',
    last_name: 'Chan',
    blood_type: 'O-',
    gender: 'female',
    dob: '26th January 1983',
    residence: {
      street: '120 Spencer St',
      city: 'Melbourne',
      state: 'Victoria',
    }
  },

  alex = {
    first_name: 'Alex',
    last_name: 'Palma',
    blood_type: 'B+',
    gender: 'male',
    dob: '8th May 1987',
    residence: {
      street: 'Unit 17, 50 Spencer St',
      city: 'Melbourne',
      state: 'Victoria',
    }
  }
]

# I want all the people's first name printed on the screen

# def get_first_name(person)
#   first_name = person[:first_name]
#   #first_name
#   #"The person's first name is: #{first_name}"
# end  

# people.each do |person|
#   puts "The person's first name is: #{get_first_name(person)}"
# end  

# Change Sally's name
# sally[:first_name] = "susan"
# puts sally[:first_name]
#


# puts first_name(sally)
# puts first_name(alex)

# write the full name of each person out to screen
# use a method (get) and loop over people

def get_full_name(person)
  first_name = person[:first_name]
  last_name = person[:last_name]
  "#{first_name} #{last_name}"
  #person[:first_name] + " " + person[:last_name]
end

people.each do |person|
  puts "The person's fulle name is: #{get_full_name(person)}"
end