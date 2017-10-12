

class Service
  attr_accessor :name # String
  attr_accessor :accounts # Array of Account
  attr_accessor :content

  def initialize
    @accounts = []
    @content = []
  end

  def add_account(account)
    @accounts << account
  end

  def add_content(item)
    @content << item
  end

  def find_account_for_email(email)
    found_account = nil
    @accounts.each do |account|
      if account.email == email
        found_account = account
        break
      end
    end
    return found_account
  end

  # def add_account
  #   puts "\nGreat! Please enter an email for your new #{self.name} account... \n".green
  #   print 'Email address: '.light_blue
  #   email = gets.chomp.downcase
  #   print 'Password: '.light_blue
  #   email = gets.chomp
  #   print 'Name on credit card: '.light_blue
  #   credit_name = gets.chomp
  #   print 'Number on credit card: '.light_blue
  #   credit_number = gets.chomp
  #   print 'Credit card expiry year (e.g. 2021): '.light_blue
  #   credit_year = gets.to_i
  #   print 'Credit card expiry month (e.g. 5 for May): '.light_blue
  #   credit_month = gets.to_i
  #   print 'Credit card expiry date (e.g. 2 for 2nd): '.light_blue
  #   credit_day = gets.to_i

  #   credit_exp = Date.new(credit_year, credit_month, credit_day)
  #   creditcard = CreditCard.new(credit_name, credit_number, credit_exp)

  #   new_account = Account.new
  #   new_account.email = email
  #   new_account.password = password
  #   new_account.credit_card = creditcard
  #   @accounts << new_account
  #   puts "\nAccount for #{new_account.email} has been created. (There are now #{@accounts.count} account(s) in #{self.name}.) \n\nNow let's add some profiles!".green

  #   new_account.add_profile

  # end


  # def welcome
  #   puts "\nWELCOME TO #{self.name.upcase}!!".black.on_green
    
  #   puts "Please select an option \n".green

  #   puts "1. Sign in \n2. Create a new account\n3. Exit".blue
  #   answer = gets.strip

  #   case
  #     when answer == '1'     
  #       puts 'do sign in...'
  #     when answer == '2'     
  #       self.add_account
  #     else
  #       puts "\nGoodbye!!\n\n".green
  #   end

  #   self.main_menu
  # end

  # def main_menu
  #   puts "\nMain #{self.name} menu:".black.on_green
  #   puts "\n 1. View movies\n 2. View profile details\n 3. Log out".blue
  #   selection = get.to_i
  # end

end