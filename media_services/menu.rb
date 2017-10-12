require 'pry'

def welcome_menu(service)

  system 'clear'
  puts "\nWELCOME TO #{service.name.upcase}!!".black.on_green ### 
  
  puts "Please select an option \n".green

  puts "1. Sign in \n2. Create a new account\n3. Exit".blue
  answer = gets.strip

  case answer
    when '1'     
      sign_in(service)
    when '2'     
        add_account(service)
    when '3'
      system 'clear' 
      puts "\nGoodbye!!\n\n".green   
      sleep 1
      abort
    else
      puts "Invalid choice #{answer}".red
      welcome_menu(service)
  end  
end

def sign_in(service)
  account = nil
  
  system 'clear'
  puts "Sign in to #{service.name} \n".black.on_green
  print 'Email address: '.light_blue

  email = gets.chomp.downcase
  account = service.find_account_for_email(email)
  
  if account.nil?
    puts "No account found for email #{email}".red
    sleep 1
    welcome_menu(service)
  end

  print 'Password: '.light_blue
  password = gets.chomp
  pw_check = account.check_password(password)

  if pw_check == true
    account_menu(service, account)
  elsif pw_check == false
    puts "Inncorrect password".red
    sleep 1
    welcome_menu(service)
  end

end

def add_account(service)
  puts "\nGreat! Please enter an email for your new #{service.name} account... \n".green
  print 'Email address: '.light_blue
  email = gets.chomp.downcase
  print 'Password: '.light_blue
  password = gets.chomp
  print 'Name on credit card: '.light_blue
  credit_name = gets.chomp
  print 'Number on credit card: '.light_blue
  credit_number = gets.chomp
  print 'Credit card expiry year (e.g. 2021): '.light_blue
  credit_year = gets.to_i
  print 'Credit card expiry month (e.g. 5 for May): '.light_blue
  credit_month = gets.to_i
  print 'Credit card expiry date (e.g. 2 for 2nd): '.light_blue
  credit_day = gets.to_i

  credit_exp = Date.new(credit_year, credit_month, credit_day)
  creditcard = CreditCard.new(credit_name, credit_number, credit_exp)

  details_hash = {email: email, password: password}

  new_account = Account.new(details_hash)
  new_account.credit_card = creditcard
  service.add_account(new_account)
  puts "\nAccount for #{new_account.email} has been created. (There are now #{service.accounts.count} account(s) in #{service.name}.) \n\nNow let's add some profiles!".green

  add_profile(service, new_account)

end

def add_profile(service, account)
  puts "\nPlease enter the details for profile number #{account.profiles.count + 1} in account #{account.email}... \n".green

  print 'First name: '.light_blue
  first_name = gets.chomp
  print 'Last name: '.light_blue
  last_name = gets.chomp
  print 'Year of birth: '.light_blue
  yob = gets.to_i
  print 'Month of birth (e.g. May is 5): '.light_blue
  mob = gets.to_i
  print 'Day of birth (e.g. 1st is 1): '.light_blue
  day_ob = gets.to_i
  dob = Date.new(yob, mob, day_ob)

  user = {
    account: account,
    first_name: first_name,
    last_name: last_name,
    dob: dob
  }
  new_profile = Profile.new(user)
  account.add_profile(new_profile)

  puts "\nProfile for #{new_profile.first_name} has been created within the account #{account.email}. This account now has #{account.profiles.count} profiles \n".green
  
    puts "Would you like to create another profile within the account #{account.email}? (Y/N)".green
    response = gets.strip.upcase
    
    case response
      when 'Y'
        puts "\nLet's add another profile, then!".green
        add_profile(service, account)
      when 'N'       
        account_menu(service, account)
      else
        puts "Invalid choice #{answer}".red
        sleep 1
    end
end

def account_menu(service, account)  
  system 'clear'
  puts "\nYou are logged in as #{account.get_email}. Select a profile to use: \n".green
  i = 1
  account.profiles.each do |profile|
    puts "#{i}. #{profile.full_name}".blue
    i = i + 1
  end
  puts "#{i}. Create new profile \n#{i + 1}. Log out from account #{account.email}".blue

  profile_selection = gets.chomp.to_i

  case
    when profile_selection < i
      profile = account.profiles[profile_selection - 1]
      on_login(service, account, profile)  
    when profile_selection == (i)
      add_profile(service, account)
    when profile_selection == (i + 1)
      welcome_menu(service)
    else
      puts "Invalid choice '#{profile_selection}''".red
      sleep 1
      account_menu(service, account)
  end
end

def on_login(service, account, profile)
  system 'clear'
  puts "\nHi #{profile.full_name}! Select something to watch:\n".green
  i = 1

  service.content.each do |item|
    puts "#{i}. #{item.title} (#{item.genre}), #{item.rating}. #{item.run_time} mins".light_blue
    i = i + 1
  end
  puts "#{i}. Exit to account menu".light_blue

  selection = gets.chomp.to_i

  case
    when selection < i
      item = service.content[selection - 1]
      system 'clear'
      puts "You are watching ... #{item.title}\n".black.on_white
      sleep 2
      puts "\n\n...".blue
      sleep 2
      puts "\n\n#{item.comment}!".blue
      sleep 2
      puts "\n\nWow, that was great, wasn't it??!!".blue
      sleep 2
      system 'clear'
      on_login(service, account, profile)
    when selection == (i)
      account_menu(service, account)
    else
      puts "Invalid choice #{selection}".red
      sleep 1
      on_login(service, account, profile)
  end
end

def main_menu
    puts "\nMain menu:".black.on_green
    puts "\n 1. View movies\n 2. View profile details\n 3. Log out".blue
    selection = get.to_i
end

