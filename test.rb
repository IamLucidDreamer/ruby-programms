require_relative 'crud'

user = [{:username => "manas", :password =>"password1"},
{:username => "manas", :password =>"password1"},
{:username => "mummy", :password =>"password2"},
{:username => "papa", :password =>"password3"},
{:username => "dadi", :password =>"password4"},
{:username => "baba", :password =>"password5"},
]

hashed_users = Crud.create_secure_users(user)
puts hashed_users
