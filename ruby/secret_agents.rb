def encrypt(string)
  index = 0
  encrypt_string = string
  while index < string.length
    if string[index] == " "
      encrypt_string[index] = string[index]
      index += 1
    #adding conditional logic to avoid the 
    #string extending
    elsif string[index] == "z"
        string[index] = "a"
        index += 1
    else
      encrypt_string[index] = string[index].next
      index += 1
    end
  end
  p encrypt_string
end

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  alpha_index = 0
  decrypt_string = string
  while index < string.length
    if string[index] == " "
      decrypt_string[index] = string[index]
      index += 1
    #adding conditional logic to avoid the 
    #string extending
    elsif string[index] == "a"
      string[index] = "z"
      index += 1
    else
      until string[index] == alphabet[alpha_index]
       alpha_index += 1
      end
      decrypt_string[index] = alphabet[alpha_index - 1]
      #Forgot to make the index add up here which 
      #was causing the infinate loop
      index += 1
    end
    alpha_index = 0
  end
  p decrypt_string
end

#encrypted_pass = encrypt("zed")
#decrypted_pass = decrypt(encrypted_pass)
#decrypt(encrypt("swordfish"))

puts "Greetings agent, would you like to encrypt(e) or decrypt(d) a password?"
puts "Enter e for encryption or d for decryption"
valid_choice = false
until valid_choice
  choice = gets.chomp
  if choice == "e" || choice == "d"
    valid_choice = true
  else
    puts "Please Enter e for encryption or d for decryption"
  end
end

puts "Enter your password"
password = gets.chomp

if choice == "e"
  encrypt(password)
elsif choice == "d"
  decrypt(password)
else
  puts "Something has gone wrong, sorry about that."
end