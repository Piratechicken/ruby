require 'pry'

# My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.

# I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.

# For example 99 will have "weight" 18, 100 will have "weight" 1 so in the list 100 will come before 99. Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

# Example:

# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: "100 180 90 56 65 74 68 86 99"

# When two numbers have the same "weight", let us class them as if they were strings and not numbers: 100 is before 180 because its "weight" (1) is less than the one of 180 (9) and 180 is before 90 since, having the same "weight" (9) it comes before as a string.

# All numbers in the list are positive numbers and the list can be empty.

def order_weight(strng)
  # your code
end

strng = "56 65 74 100 99 68 86 180 90"

weights_array = strng.split(" ")
array2 = []

weights_array.each do |n|
  int = n.to_i
  tot = int.digits.inject(:+)
  array2 << tot
end
 puts array2.map.with_index {|i,index| index+i }.sort.inspect

# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

# def get_middle(s)
#   letters = s.length
#   if (letters % 2) == 0
#     answer = "#{s[letters/2-1]}#{s[letters/2]}"
#   elsif (letters % 2) != 0
#     answer = "#{s[letters/2]}"
#   end
#   puts answer
# end

# s = "test"
# get_middle(s)

###################
# Given the triangle of consecutive odd numbers:

#              1
#           3     5
#        7     9    11
#    13    15    17    19
# 21    23    25    27    29
# ...
# Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

# row_sum_odd_numbers(1); # 1
# row_sum_odd_numbers(2); # 3 + 5 = 8
######################

# def row_sum_odd_numbers(n)
#   row_no = n

#   tot_numbers = 0

#   n.times do 
#     tot_numbers = row_no + tot_numbers
#     row_no = row_no - 1
#   end

#   max_no = (tot_numbers * 2) - 1

#   no = 0
#   tot = 0

#   n.times do 
#     to_add = max_no - (2 * no)
#     tot = tot + to_add
#     no = no + 1
#   end

#   tot
# end


# puts row_sum_odd_numbers(2)

# which takes in numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.
# For example:
# If this isn't the case, return 0

# def triple_double(num1,num2)
# array = num1.to_s.chars
# array2 = num2.to_s.chars

# n = 0
# triple_array = []
# array.each do |number|
#   if number == array[n+1] && number == array[n+2]
#       triple_array << number
#   end 
#   n = n+1
# end

# double_array = []
# n1 = 0
# array2.each do |number|
#   if number == array2[n1+1]
#       double_array << number
#   end 
#   n1 = n1+1
# end

# answer = 0

# triple_array.each do |number|
#    if double_array.include?(number)
#       answer = 1
#    else
#       answer = 0
#    end
# end
# answer
# end

# # array = [1,4,6,7,7,7,3,8,3,2,6,6,6]
# # array2 = [1,4,6,6,7,7,3,8,3,2]
# num1 = 1235666
# num2 = 1345796788

# puts triple_double(12345, 12345)


