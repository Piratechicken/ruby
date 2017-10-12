class Toolbelt

  def self.generate_string_of_length(length)
    letter_array = ('a'..'z').to_a
    rand_string = ''
    
    length.times do
      r = rand 1..26
      rand_string = letter_array[r-1] + rand_string
    end
    
    rand_string
  end

end

