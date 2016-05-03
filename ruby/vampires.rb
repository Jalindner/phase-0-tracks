#wolves_like_sunshine = true
#wolves_like_garlic = true
#vampires_like_sunshine = false
#vampires_like_garlic = false

def age_varification(year)
  current_year = 2016
  correct_age = current_year - year
end

puts "How many employees are being screened today?"
employees = gets.to_i
while employees != 0

  puts "What is their name?"
  v_name = gets.chomp

  puts "How old are they?"
  v_age = gets.to_i
  puts "What year where they born?"
  v_year = gets.to_i
  logged_age = age_varification(v_year)
  correct_age = false
  if logged_age == v_age || logged_age == v_age + 1
    correct_age = true
  end

  puts "Would they like some garlic bread?(y/n)"
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

  puts "Would they like to enroll in the company's health insurance?(y/n)"
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

  puts "Please list any allergies the employee has, type 'done' when done."
  puts "(please use only lowercase, the programmer is getting tired)"
  done = false
  until done
    allergy = gets.chomp
    if allergy == "sunshine" || allergy == "done"
      done = true
    end
  end

  case 
  when v_name == "Drake Cula" || v_name == "Tu Fang"
    puts "Definatly a vampire"
  when correct_age == false && garlic_confirmed == false && health_confirmed == false
    puts "Almost certainly a vampire"
  when correct_age == false && garlic_confirmed == false || health_confirmed == false || allergy == "sunshine"
    puts "Might be a vampire"
  when correct_age == true && garlic_confirmed == true || health_confirmed == true
    puts "Probably not a vampire."
  else
    puts "Results inconclusive"
  end
  employees -= 1
  puts "There are #{employees} employees left to screen."
end
puts "Actually, we don't care if you're a vampire or not! Let's all be friends!"




