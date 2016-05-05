def encrypt(string)
  index = 0
  encrypt_string = string
  while index < string.length
    if string[index] == " "
      encrypt_string[index] = string[index]
      index += 1
    else
      encrypt_string[index] = string[index].next
      index += 1
    end
  end
  p encrypt_string
end

encrypt("today the water fell in teh wrong direction")