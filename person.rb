class Person

  # attr_reader :first_name, :last_name, :age # attr_reader(:fi
  attr_accessor :first_name, :last_name, :age # both read and writerst_name, :last_name, :age) # allws to be accessed
  # attr_writer :age #allows to be set

  def initialize(person)
    @first_name = person[:first_name] # instance variable
    @last_name = person[:last_name]
    @age = person[:age]
    @credit_card = person[:credit_card]
  end

  # def initialize(first_name, last_name, age, credit_card)
  #   @first_name = first_name
  #   @last_name = last_name
  #   @age = age
  #   @credit_card = credit_card
  # end

  # def get_first_name
  #   @first_name
  # end

  # def get_last_name
  #   @last_name
  # end

  # def get_age
  #   @age
  # end

  def full_name
    get_full_name
  end

  private
  def get_full_name
    # "#{@first_name} #{@last_name}"
    "#{first_name} #{last_name}"
  end

  # def set_age(age)
  #   @age = age
  # end

end

first_person = {
    first_name: 'Sally',
    last_name: 'Chan',
   # blood_type: 'O-',
   # gender: 'female',
    age: '26th January 1983',
    # residence: {
    #   street: '120 Spencer St',
    #   city: 'Melbourne',
    #   state: 'Victoria',
    # }
}

sally = Person.new(first_person)
#alex = Person.new("Alex", "Palma", 30, '2452624')

# puts alex.get_full_name
# puts alex.get_age
# alex.set_age(31)
# puts alex.get_age

puts sally.first_name
puts sally.age
sally.age = 35
puts sally.age
puts sally.full_name # get_full_name is private, but full_name can access it
