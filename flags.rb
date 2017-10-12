class String 
  def flag_emoji
    case self
      when "au"
        "🇦🇺"
      when "us"
        "🇺🇸"
      when "fr"
        "🇫🇷"
      when "nz"
        "🇳🇿"
      when "jp"
        "🇯🇵"
      else 
        "❓"
    end  
  end
end



test = "I am from au and I visited us"
puts test.flag_emoji