puts "Enter hamster's name"
name = gets.chomp
puts "Enter volume of hamster (1-10)"
volume = gets.chomp
volume.to_i
puts "Enter fur color"
color =  gets.chomp
puts "Is this hamster a good canidate for adoption?(y/n)"
answer = gets.chomp
puts "Enter estimated age."
age = gets.chomp
if age == ""
  age = nil
  puts "no age entered"
else
  age.to_i
  puts age
end
