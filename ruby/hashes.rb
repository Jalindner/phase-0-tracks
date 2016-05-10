#Ask user for proper input data
#convert data to appropriate data types
#assign data types to keys in a hash
#print the hash and allow the user a single update
#if user types none, end the program
#if user types a key, ask for input on new setting
#convert key choice into a symbol 
#apply new setting to key 

application = {age: nil, pets: nil, children: nil, theme: nil}

puts "How old are you?"
app_age = gets.to_i
application[:age] = app_age
puts "Do you have pets? (y/n)"
app_pets = gets.chomp
if app_pets == "y"
  application[:pets] = true
elsif app_pets == "n"
  application[:pets] = false
end

puts "How many children do you have?"
app_child_amt = gets.to_i
application[:children] = app_child_amt
puts "What theme are you looking for?"
app_theme = gets.chomp
application [:theme] = app_theme

puts application

puts "Would you like to update anything? Type 'none' if no"
choice = gets.chomp
if choice == "none"
  puts "Thank you for applying!"
elsif choice == "age" || choice == "location" || 
  choice == "children" || choice == "theme"
  puts "Enter what you would like to update #{choice} to"
  setting = gets.chomp
  if choice == "children"
    application[:children] = setting.to_i
  elsif choice == "pets"
    if setting == "y"
      application[:pets] = true
    else
      application[:pets] = false
    end
  else
    application[choice.to_sym] = setting
  end
end

puts application
puts "Thank you for applying!"


