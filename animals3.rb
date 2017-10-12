require 'colorize'

def emoji_species(input)
  case input 
    when "wolf", "wolves"
      "🐺"
    when "gorilla", "gorillas"
      "🦍"
    when "rhino", "rhinocerus", "rhinoceri"
      "🦏"
    when "owl", "owls"
      "🦉"
    when "fox", "foxes", "foxs"
      "🦊"
    when "rabbit", "rabbits"
      "🐰"
    when "chicken", "chickens"
      "🐓"
    when /\beagle/ #eagle regex will match anything that contains eagle \b is word boundary
      "🦅"
    else
      #"❌ could not find animal #{input}" #no color formatting
      "❌ could not find animal ".red + "\"#{input}\"".on_red #fancy color formatting
  end
end

puts "Enter a species:"
species = gets.strip.downcase

species_array = species.split(" ")
puts "\n" + emoji_species(species) + "\n\n"

# puts emoji_species("wolf")
# puts emoji_species("rhino")
# puts emoji_species("bunyip")

#strip removes white space and \n \r