jellybeans_eaten = 0

until jellybeans_eaten == 5
	puts "You ate a jellybean."
	jellybeans_eaten += 1
end
puts "Okay, that's enough"


valid_input = false
until valid_input
	puts "Do you want sweet or healthy?"
	answer = gets.chomp
	if answer == "sweet"
		puts "Eat icecream!"
		valid_input = true
	elsif answer == "healthy"
		puts "Eat carrots!"
		valid_input = true
	else
		puts "I don't understand you"
	end
end
puts "Thank you for using our snakatron"
			