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

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  alpha_index = 0
  decrypt_string = string
  while index < string.length
    if string[index] == " "
      decrypt_string[index] = string[index]
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

encrypted_pass = encrypt("abc")
decrypted_pass = decrypt(encrypted_pass)
