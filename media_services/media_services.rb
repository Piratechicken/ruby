require_relative 'service'
require_relative 'account'
require_relative 'profile'
require_relative 'content'
require_relative 'menu'
require_relative 'credit_card'
require 'yaml'
require 'date'
require 'colorize'

netflix = Service.new
netflix.name = 'Netflix'

netflix_content = YAML.load(File.read("content_db.yaml"))
accounts = YAML.load(File.read("accounts_db.yaml"))
profiles = YAML.load(File.read("profiles_db.yaml"))

# user = {
#     account: simon,
#     first_name: 'Simon',
#     last_name: 'Dwyer',
#     dob: Date.new(1111,1,1)  
# }

# simon1 = Profile.new(user)
# simon.add_profile(simon1)

netflix_content.each do |item|
  item = Content.new(item)
  netflix.add_content(item)
end

accounts.each do |account|
  account = Account.new(account)
  netflix.add_account(account)
end

profiles.each do |profile| 
  email = profile[:account]
  account = netflix.find_account_for_email(email)
  profile = Profile.new(profile)
  account.add_profile(profile)
end

welcome_menu(netflix)