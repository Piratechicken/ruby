# Define 4 methods. 
# The first takes a string, and then returns the string + “ will be”, the second takes a string, and returns the string + “ won’t be”, the third takes a string and returns the string + “ impeached.” and the fourth is called trump_predictor. 
# trump_predictor takes a string, but then you must use the previous functions to get from this method call trump_predictor(“Trump”) to whatever outcome you think is more likely, but using only the previously defined functions. Store the output of trump_predictor in a well named variable. (For example, if you think he won’t be impeached, only call the methods that matter, so the output string will be “Trump won’t be impeached.”)




  # Define a method that takes a number of feet, and returns a number representing the total inches, and another that takes a number representing inches and returns the number of centimetres. Define and call a third function called feet_to_cm that takes a number of feet and returns the number of centimetres, but that uses only our previous two functions. Store that number in a well-named variable.

  # def feet_to_inch(feet)
  #   feet.to_f * 12.0
  # end  
 
  # def inches_to_cm(inches)
  #   inches.to_f * 2.54
  # end

  # def feet_to_cm(feet)
  #    inches_to_cm(feet_to_inch(feet))
  # end

  # feet = 7.0
  # cm_from_feet = feet_to_cm(feet.to_f)
  # puts cm_from_feet

  # Do this one any way you can:
  # 100 students are sitting in a row, and each is wearing a hat. You walk along the line of students, and take off every hat. You pass them all again, and this time, when you get to every second student if their hat is off you put it on, and if it's on you take it off. The third pass you only deal with every third student, and again, if their hat is off you put it on, but if it's on you take it off. You continue this process with each further pass you toggle the 'hat state' of every fourth student, then fifth, and so on, until you have passed by the students 100 times.
  # What is the state of the hats when you have finished?

  # pass_no = 1
  # puts pass_no += 1

  # *Problem 7* DONE
  # Define a well-named method that takes one argument and returns ‘true’ if that argument is even, and false if the argument is an odd number. Define a method ‘div_or_mult_two’ which takes a number as an argument. Using your first defined method, if the number is even this method returns the result of that number divided by 2. If the number is odd it returns the result of that number multiplied by 2. Store the result of a call to this method in a variable. (edited)
  
# def is_even(number)
#   even_check = number % 2
#   if even_check == 0
#     return true
#   else
#     return false
#   end
# end
 
# def div_or_mult_two(number)
#   check = is_even(number)
#   if check == true
#     number / 2
#   elsif check == false
#     number * 2
#   end
# end

# number = 6

# result = div_or_mult_two(number)
# puts result


  # *Problem 8*
  # Define a method that takes an array of numbers, and returns the total of the addition of all the numbers in the array. Store the result of a call to this method in a well-named variable.

  def tot_array(array)
    array.each do |i|
      value = array[1]
    end
  end

  array = [3, 4, 5]

  puts tot_array(array)