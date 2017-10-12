
# Create class called Car
class Car

  attr_accessor :name, :color, :rego, :fuel, :tank_size

  def initialize(car)
    @name = car[:name]
    @color = car[:color]
    @rego = car[:rego]
    @fuel = car[:fuel]
    @tank_size = car[:tank_size]
  end

  def all_details # To put all car deets into a sentence
    percent_full = 100.0 * @fuel / @tank_size 
    "a #{@color} car with registrtion #{@rego}, running at #{@fuel} L out of #{@tank_size} L (#{percent_full.round(0)}% full)."
    # can also use self eg self.color self.rego
  end

  def col1 # using self
    "Colour is #{self.color}"
  end

  def fill_petrol # fill the tank with petrol
    fuel_added = @tank_size - @fuel
    @fuel = @fuel + fuel_added
    "You have added #{fuel_added} L of petrol"
  end

end


# challenge create 3 instances of car in an array
# each car is on empty
# give each a different rego and colour
# loop through each car, print car colour & rego
# add to fuel to car 100% full


# array of cars
cars_list = [
  red_car = {
    name: 'red car',
    color: "red",
    rego: "343-KHG",
    fuel: 50.0,
    tank_size: 80.0
    },

  blue_car = {
    name: 'blue car',
    color: "bue",
    rego: "574-KJH",
    fuel: 80.0,
    tank_size: 100.0
    },

  grey_car = {
    name: 'grey car',
    color: "grey",
    rego: "208-LOE",
    fuel: 20.0,
    tank_size: 50.0
    }
]

# loop for each array item
cars_list.each do |i|
   i = Car.new(i) # turn array of hashes into instances of class Car
   puts "#{i.name.capitalize} is #{i.all_details}" # put all deets on screen
   puts i.fill_petrol # fill with petrol and report
   puts i.col1
end


