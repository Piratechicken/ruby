zoo = [
  {
    species: "lion",
    count: 4,
    scientific_name: "Panthera leo",
    food: "soy beef",
    emoji: "🦁"
    # :species => "lion" # alt way
    # "species" => "lion" # can use string instead of symbol but uses more resources
  },
  {
    :species => "gorilla",
    :count => 9,
    scientific_name: "Gorilla beringei beringei",
    food: "bark",
    emoji: "🦍"
  },
  {
    :species => "octopus",
    :count => 11,
    scientific_name: "Octopoda",
    food: "seaweed",
    emoji: "🐙"
  }
]


zoo.each do |record|
  species = record[:species]
  sci = record[:scientific_name]
  count = record[:count]
  food = record[:food]
  emoji = record[:emoji]
  print "#{emoji} #{species} (#{sci}) x #{count}. It eats #{food}."
  puts ""

  # print "#{record[:species]} (#{record[:scientific_name]}) x #{record[:count]}"
  # puts ""

  # print record[:species]
  # print " ("
  # print record[:scientific_name]
  # print ") x "
  # print record[:count]
  # puts ""
end  

