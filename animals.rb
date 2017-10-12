require 'colorize'
require 'terminal-table'
require 'pry'

animals = ["dog", "cat","moose","ostrich","emu","iguana","penguin","elephant", "eagle"]

rows = []


# Looping through each item
# Runs the code again and each

index = 0
last_index = animals.length - 1

# animals.each do |animal|
#   print index
#   print " "
#   print animal.upcase
#   #binding.pry
#   print ", " unless index == last_index
#   index = index + 1
# end

animals.each do |animal|
  if index % 2 == 0 ? rows << [(index + 1).to_s.blue, animal.to_s.blue] : rows << [(index + 1).to_s.green, animal.to_s.green]
  end
  index += 1
end

table = Terminal::Table.new :headings => ['Count'.green, 'Species'.green], :rows => rows

puts table


# animals.each_with_index do |animal, index|
#   print index
#   print " "
#   print animal.upcase
#   print ", " unless index == last_index
# end

# animals.each do |animal|
#   print index
#   print " "
#   print animal.upcase
#     print ", " unless index == last_index
#   index = index + 1
# end

puts ""