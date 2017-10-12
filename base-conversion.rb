print 'Enter the *BASE* of the number you\'d like to convert: '
base_from = gets.strip

print 'Enter the number you\'d like to convert: '
base_num = gets.strip

# base_to = 0

def base_to_dec(base_num, base_from)

  arr = base_num.to_s.split('').map(&:to_i)
  num_digits = arr.count

  arr_pos = num_digits
  dec_arr = []
 
  arr[arr_pos]
  expon = 0

  while arr_pos >= 1 do
    dec_arr << arr[arr_pos - 1] * base_from.to_i**expon
    arr_pos = arr_pos - 1 
    expon = expon + 1   
  end

  puts dec_arr.inject(0, :+)

end

base_to_dec(base_num,base_from)