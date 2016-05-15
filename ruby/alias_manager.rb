#name_swap method takes a string as an arguement
#assign .split(' ') string to an array
#reverse array and join it to become a string again
def name_swap(name)
  new_name = name.split(' ')
  new_name.reverse.join(' ')
end

#consenant_swap method takes a string as an arguement
#searches through a string of consenants
#when it finds two consenants in the arguement and the consenants string that are equal,
#the string's match becomes the consenants' match + 1
#special loop compensates for edge cases
def consenant_swap(name)
  name = name.downcase
  consenants = "bcdfghjklmnpqrstvwxyz"
  name_index = 0
  cons_index = 0
  while name_index < name.length
    if name[name_index] == "a" || name[name_index] == "e" ||name[name_index] == "i"|| name[name_index] == "o" || name[name_index] == "u" || name[name_index] == " "
      name_index += 1
    elsif name[name_index] == "z"
      name[name_index] = "b"
      name_index += 1
    else
      until name[name_index] == consenants[cons_index]
        cons_index += 1
      end
      name[name_index] = consenants[cons_index + 1]
      name_index += 1
    end
    cons_index = 0
  end
  name
end

#vowel_hide takes a string arguement
#run through each character in a string, if the string equals a vowel, replace it with a #
def vowel_hide(name)
  name = name.chars
  name_length = name.length
  name_length.times do |index|
    if name[index] == "a" || name[index] == "e" ||name[index] == "i"|| name[index] == "o" || name[index] == "u"
      name[index] = "#"
    end
  end
  name = name.join("")
end

#case_fix takes a string as an arguement
#splits string into an array and capitalizes each element
#joins array back into string
def case_fix(name)
  fixed_name = name.split(' ')
  fixed_name.each do |word|
    word.capitalize!
  end
  fixed_name.join(' ')
end

agent_name = "Anna Swen"
puts "Unaltered name: " + agent_name
alt_name = name_swap(agent_name)
puts "After name_swap: " + alt_name
alt_name = consenant_swap(alt_name)
puts "After consenant_swap: " + alt_name
alt_name = vowel_hide(alt_name)
puts "After vowel_hide: " + alt_name
alt_name = case_fix(alt_name)
puts "After case_fix: " + alt_name