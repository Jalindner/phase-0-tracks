puts "Enter hamster's name"
name = gets.chomp
puts "Enter volume level of hamster (1-10)"
number_valid = false
until number_valid
 volume = gets.to_i
 if volume >= 1 && volume <=10
   number_valid = true
 else
   puts "Please enter a valid answer"
 end
end
puts "Enter fur color"
color =  gets.chomp
puts "Is this hamster a good canidate for adoption?(y/n)"
answer_valid = false
until answer_valid
 answer = gets.chomp
 if answer == "y"
   answer_valid = true
   answer = true
 elsif answer == "n"
   answer_valid = true
   answer = false
 else
   puts "Please enter a valid answer"
 end
end
puts "Enter estimated age."
age = gets.chomp
if age == ""
  age = nil
 else
  age.to_i
end

puts "Your hamster's name is #{name}."
puts "Your hamster's volume setting is #{volume}."
puts "Your hamster is #{color}."
if answer
 puts "Your hamster is eligible for adoption."
else
 puts "Your hamster won't be adopted."
end
if age == nil
 puts "Age not confirmed"
else
 puts "Your hamster is #{age} year(s) old."
end