require_relative 'account'

accounts = [
  {
  email: 'simeon@gmail',
  password: '111',
  credit_card: '',
  profiles: []
  },
  {
  email: 'jim@yahoo',
  password: '111',
  credit_card: '',
  profiles: []
  },
  {
  email: 'sally@hotmail',
  password: '111',
  credit_card: '',
  profiles: []
  }
]

accounts.each do |account|
  account = Account.new
  account.email = :email
  account.password = [:password]
  account.credit_card = [:credit_card]
  account.profiles = [:profiles]
  puts account.email
end

