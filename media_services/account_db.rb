require 'date'
require 'yaml'

accounts = [
  {
  email: 'simeon@gmail',
  password: '111',
  },
  {
  email: 'jim@yahoo',
  password: '111',
  },
  {
  email: 'sally@hotmail',
  password: '111',
  }
]


users = [
  {
    account: 'simon@gmail',
    first_name: 'John',
    last_name: 'Smith',
    dob: Date.new(1990, 3, 11)
  },

  {    
    account: 'simon@gmail',
    first_name: 'Jim',
    last_name: 'McGee',
    dob: Date.new(1980, 5, 25)
  },

  {
    account: 'simon@gmail',
    first_name: 'Bobby',
    last_name: 'Junior',
    dob: Date.new(2005, 8, 18)
  }
]

puts users.to_yaml