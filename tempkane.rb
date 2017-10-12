
require 'colorize'
require 'terminal-table'

# array of days
days_of_week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday","Sunday"]

# Ask and determine start day for week
puts "Do you prefer your week to start on Monday (M) or Sunday (S)? ".black.on_white
start_day = gets.chomp.upcase

if start_day == "S"
  days_of_week.pop
elsif start_day =="M"
  days_of_week.shift
else
  puts "Please enter an S or M".red
  abort
end



rows = days_of_week.map do |i|
 instruction = "Enter " + i.to_s + "'s temperature: "
 print instruction.blue

 day_temp = gets.to_f # get input (deg C)
 day_temp_f = day_temp * (9.0/5.0) + 32.0 # calc in deg F

 # conditional formatting for rows based on temp
   if day_temp >= 30.0
     [i.red, day_temp.round(1).to_s.red, day_temp_f.round(1).to_s.red]
   elsif day_temp >= 20
     [i.yellow, day_temp.round(1).to_s.yellow, day_temp_f.round(1).to_s.yellow]
   elsif day_temp >= 10
     [i.cyan, day_temp.round(1).to_s.cyan, day_temp_f.round(1).to_s.cyan]
   else
     [i.blue, day_temp.round(1).to_s.blue, day_temp_f.round(1).to_s.blue]
   end

end

# create table
table = Terminal::Table.new :headings => ['Day'.green, 'Temperature C'.green, 'Temperature F'.green], :rows => rows
table.align_column(1, :center)
table.align_column(2, :center)

# puts table
puts table