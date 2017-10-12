require 'date'

class Profile
  # - @account
  # - @first_name
  # - @last_name
  # - dob
  # - def country
  #TODO:  
  # - @user_name?
  attr_accessor :account # Account
  attr_accessor :first_name # String
  attr_accessor :last_name # String
  attr_accessor :dob # Date

  def initialize(user)
    @account = user[:account]
    @first_name = user[:first_name]
    @last_name = user[:last_name]
    @dob = user[:dob]
  end  

  def get_account_email
    account_email = @account
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def country
    'Australia'
  end

  # def on_login
  #   puts "\nHi #{self.full_name}!".green
  # end

end