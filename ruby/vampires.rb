#wolves_like_sunshine = true
#wolves_like_garlic = true
#vampires_like_sunshine = false
#vampires_like_garlic = false

def age_varification(age, year)
  current_year = 2016
  correct_age = current_year - year
  if correct_age == age || correct_age == age - 1 || correct_age == age + 1
    puts "Age registered!"
  else
    puts "Warning! Age inconsistency!"
  end
end


puts "What is your name?"
v_name = gets.chomp

puts "How old are you?"
v_age = gets.to_i
puts "What year where you born?"
v_year = gets.to_i
age_varification(v_age, v_year)

puts "Would you like some garlic bread?(y/n)"
eats_garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance?(y/n)"
health_ins = gets.chomp
