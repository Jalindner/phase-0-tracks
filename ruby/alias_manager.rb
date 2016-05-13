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
  if name[name_index] == " " || name[name_index] == "a" || name[name_index] == "e" ||name[name_index] == "i"|| name[name_index] == "o" || name[name_index] == "u"
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

agent_name = "John Lindner"
puts "Unaltered name: " + agent_name
agent_name = name_swap(agent_name)
puts "After name_swap: " + agent_name
agent_name = consenant_swap(agent_name)
puts "After consenant_swap: " + agent_name

#puts "After vowel_swap: " + agent_name

