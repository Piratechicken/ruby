# class Taxi 
#   attr_accessor :rego_number, :driver

# end


# taxi1 = Taxi.new
# taxi1.rego_number = "abc-345"
# taxi1.driver = "Jim Bob McGee"

# taxi2 = Taxi.new
# taxi2.rego_number = "lll-333"
# taxi2.driver = "Jane Jones"

# taxi3 = Taxi.new
# taxi3.rego_number = "fff-ttt"
# taxi3.driver = "Abdul"

# class TaxiRide
#   attr_accessor :taxi, :passenger_name, :origin, :destination, :distance

#   def calculate_fare
#     self.distance * 1.40
#   end

# end

# ride1 = TaxiRide.new
# ride1.distance = 5

# puts ride1.calculate_fare

class Music
  attr_accessor :genre, :artist, :album, :title



end

class Album
  attr_accessor :music, :name
 
  def initialize
    @music = []
  end

end

ont = Music.new
ont.artist = "Pink Floyd"
ont.genre = "Psychedelic Rock"
ont.album = "Dark Side of the Moon"
ont.title = "On The Run"

time = Music.new
time.artist = "Pink Floyd"
time.genre = "Psychedelic Rock"
time.album = "Dark Side of the Moon"
time.title = "Time"

# puts ont.title

al1 = Album.new

al1.name = ont.album

# puts al1.name
  

# array = ["simon", "kayne", "bob"]
# puts array

# array << "dave"

# puts array[0]

al1.music << ont
al1.music << time


puts al1.music



