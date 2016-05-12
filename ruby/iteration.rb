#Release 0

#def print_iter
#  puts "Here is the pre-block message!"
#  yield("John", "Mac")
#end

#print_iter { |name1, name2| puts "This message brought to you by #{name1} and #{name2}."}



#Release 1

#unideal_pets = {orangutang: "biting", shark:"expensive diet", bull:"hates red"}
#modified_pets = ["orangutang" , "shark", "bull"]
#ideal_pets = ["hedgehog", "dog", "dragon"]
#unideal_pets = {orangutang: "biting", shark:"expensive diet", bull:"hates red"}


#puts "Ideal pets before .each modifiaction"
#p ideal_pets
#ideal_pets.each {|pet| puts "a #{pet} makes a great domestic companion."}

#ideal_pets.map! do |corr_pet|
# puts corr_pet
# "zombie"
#end

#p "after .map!"
#p ideal_pets 

#puts "unideal_pets before modification"
#p unideal_pets

#unideal_pets.each do |pet, description| 
  
 #puts "A #{pet} makes an unideal pet because #{description}"

#end


#Release 2
puts "Array before modification"
numbers = [1, 2, 3, 4, 4, 5, 6]
new_numbers = []
p numbers


#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
puts "Array after delete_if where the condition is if the number is greater than 3"
new_numbers = numbers.delete_if do
  |x| x > 3
end
p new_numbers
numbers = [1, 2, 3, 4, 4, 5, 6]

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
puts "Array after keep_if where the condition is if the number equals 4"
new_numbers = numbers.keep_if do
  |x| x == 4
end
p new_numbers
numbers = [1, 2, 3, 4, 4, 5, 6]

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
puts "Array after reject where the condition is if the number does not equal 4"
new_numbers = numbers.reject do
  |x| x != 4
end
p new_numbers

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.
puts "Array after take_while where the condition in less than 4"
new_numbers = numbers.take_while do
  |x| x < 4
end
p new_numbers












