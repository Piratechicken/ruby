
require 'pry'

class Account
  # - @email
  # - @profiles   
  #TODO:
  # - @credit_card
  attr_accessor :email # String
  attr_accessor :password 
  attr_accessor :credit_card
  attr_accessor :profiles # Array of Profile

  def initialize(item)
    @email = item[:email]
    @password = item[:password]
    @profiles = []
  end  

  def add_profile(new_profile)
    @profiles << new_profile
  end

  def get_email
    @email
  end

  def check_password(password)
    correct_password = false

    if password == @password
      return correct_password = true
    else
      return correct_password = false
    end
  end


  # Can do:
    # .new
    # .add_profile
    # .remove_profile

  # def add_profile
  #         # - @account
  #         # - @first_name
  #         # - @last_name
  #         # - dob

  #     puts "\nPlease enter the details for profile number #{self.profiles.count + 1} in account #{self.email}... \n".green

  #     print 'First name: '.light_blue
  #     first_name = gets.chomp
  #     print 'Last name: '.light_blue
  #     last_name = gets.chomp
  #     print 'Year of birth: '.light_blue
  #     yob = gets.to_i
  #     print 'Month of birth (e.g. May is 5): '.light_blue
  #     mob = gets.to_i
  #     print 'Day of birth (e.g. 1st is 1): '.light_blue
  #     day_ob = gets.to_i
  #     dob = Date.new(yob, mob, day_ob)

  #     account = self
  #     user = {
  #       account: account,
  #       first_name: first_name,
  #       last_name: last_name,
  #       dob: dob
  #     }
  #     new_profile = Profile.new(user)
  #     @profiles << new_profile

  #     puts "\nProfile for #{new_profile.first_name} has been created within the account #{self.email}. This account now has #{self.profiles.count} profiles \n".green

  #     puts "Would you like to create another profile within the account #{self.email}? (Y/N)".green
  #     response = gets.strip.upcase
  #     case 
  #       when response == 'Y'
  #         puts "\nLet's add another profile, then!".green
  #         self.add_profile
  #       when response == 'N'
  #         self.account_menu
  #       else
  #         puts "You broke it. :("
  #     end


  # def account_menu
  #   puts "\nYou are logged in as #{self.email}. Select a profile to use: \n".green
  #   i = 1
  #   self.profiles.each do |profile|
  #     puts "#{i}. #{profile.full_name}".blue
  #     i = i + 1
  #   end
  #   puts "#{i}. Back to login menu".blue
  #   selection = gets.strip.to_i - 1
    
  #   if selection < i
  #     self.profiles[selection].on_login
  #   else
  #     abort
  #   end
  # end

  # def view_profiles
  #   self.profiles.each do |profile|
  #     puts profile.full_name
  #   end
  # end

end