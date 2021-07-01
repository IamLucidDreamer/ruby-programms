user = [{:username => "manas", :password =>"password1"},
{:username => "manas", :password =>"password1"},
{:username => "mummy", :password =>"password2"},
{:username => "papa", :password =>"password3"},
{:username => "dadi", :password =>"password4"},
{:username => "baba", :password =>"password5"},
]

def auth_user(username,password,list_of_user)
  list_of_user.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
     return user_record
   end
  end
  return "Credential not found"
end


puts "Welcome to the authenticator"
25.times { print "-"}
puts
puts "This program will take input from the user and compare password."
puts "If password is corect, you will get back the user obejct."

c = 0
while c < 4
  c +=1
  puts "Enter the username:"
  username = gets.chomp
  puts "Enter the password:"
  password = gets.chomp
  puts auth_user(username,password,user)

  puts "press n to exit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
end
puts "Number of attempts exceeded" if c == 4
