#wolves_like_sunshine = true
#wolves_like_garlic = true
#vampires_like_sunshine = false
#vampires_like_garlic = false

def age_varification(year)
  current_year = 2016
  correct_age = current_year - year
  #if correct_age == age || correct_age == age - 1 || correct_age == age + 1
end


puts "What is your name?"
v_name = gets.chomp

puts "How old are you?"
v_age = gets.to_i
puts "What year where you born?"
v_year = gets.to_i
logged_age = age_varification(v_year)
correct_age = false
if logged_age == v_age || logged_age == v_age + 1
  correct_age = true
end
#puts "#{correct_age}"
puts "Would you like some garlic bread?(y/n)"
valid_answer = false
until valid_answer
  eats_garlic = gets.chomp
  garlic_confirmed = false
  if eats_garlic == "y"
    garlic_confirmed = true
    valid_answer = true
  elsif eats_garlic == "n"
    garlic_confirmed = false
    valid_answer = true
  else
    puts "Please enter y for yes or n for no"
  end
end
#puts "#{garlic_confirmed}"
puts "Would you like to enroll in the company's health insurance?(y/n)"
valid_answer = false
until valid_answer
  health_ins = gets.chomp
  health_confirmed = false
  if health_ins == "y"
    health_confirmed = true
    valid_answer = true
  elsif health_ins == "n"
    health_confirmed = false
    valid_answer = true
  else
    puts "Please enter y for yes or n for no"
  end
end
#puts "#{health_confirmed}"




