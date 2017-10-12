require 'colorize'
require 'pry'

puts "Are you working in Celcius (C) or Fahrenheit (F)? ".blue.on_white

temp_scale = gets.chomp.upcase #standardise case and remove line

#binding.pry
if temp_scale == "C"
  puts "Input the current temperature in degrees C: ".blue.on_white
  temp_c = gets.to_f #input to float
  temp_f = temp_c * (9.0/5.0) +32.0 #conversion
  answer = temp_c.to_s + " degrees C is equal to " + temp_f.round(1).to_s + " degrees F"
  puts answer.magenta.on_white #Answer

elsif temp_scale == "F"
  puts "Input the current temperature in degrees F: ".blue.on_white
  temp_f = gets.to_f
  temp_c = (temp_f - 32) * 5.0/9.0
  answer = temp_f.to_s + " degrees F is equal to " + temp_c.round(1).to_s + " degrees C"
  puts answer.magenta.on_white # Answer

else
  puts "What did you do??".red.on_yellow #error! Not a c or f entered
end

print "\n\Do you want to know if it's cold or not? (Y/N) ".blue.on_white
cold_ans = gets.chomp.upcase


if cold_ans == "N"
  puts "OK then, bye..."

elsif cold_ans == "Y" && temp_scale == "C"
    
elsif cold_ans == "Y" && temp_scale == "F"
    
else 
  puts "errorrrrr"
  
end

# elsif cold_ans == "N"
#   puts "Fine, whatever..."
# else
  
# end
