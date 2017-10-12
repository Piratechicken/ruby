require 'colorize'

service = 'netflix'
account = 'simon'


def account_menu(service, account)
  puts "\nYou are logged in as #{account}. Select a profile to use: \n".green
  profiles = ["Ine","two","three"]
  i = 1
  profiles.each do |profile|
    puts "#{i}. #{profiles[i-1]}".blue
    i = i + 1
  end
  puts "#{i}. Back to login menu".blue

  profile_selection = gets.chomp.to_i
  
  case
    when profile_selection < i
      puts profiles[profile_selection - 1]
    when profile_selection == i
      puts "exit"
    else
      puts "error"
  end

#   case
#     when profile_selection < last_item
#       profile = account.profiles[profile_selection]
#       on_login(service, profile)     
#     when profile_selection == last_item
#       welcome_menu(service)
#     else
#       puts "Invalid choice #{profile_selection}".red
#       sleep 1
#       account_menu(service, account)
#   end
 end

 account_menu(service, account)