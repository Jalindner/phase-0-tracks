class Dragon
  attr_accessor :type, :favorite_treasure, :egg_amt
  #initialize for Dragon
    #Dragon type
    #favorite_treasure
    #number of eggs
  def initialize(type, favorite_treasure)
    @type = type
    @favorite_treasure = favorite_treasure
    @egg_amt = 0
    #print_dragon
  end
  #breathe
    #what is exhaled depends on the dragon's type
    #known types are stored in a hash
    #verify that the type is in the hash
    #if the type is included, print the value associated with the matching key
    #if a type is not found, panic!
  def breathe
    example_types = {"classical" => "fire streaks", "mooshoo" => "fire balls", "undead" => "miasma", "rainbow" => "cheap electronica loops", "deep-sea" => "nothing"}
      if example_types.include?(@type)
        puts "The #{@type} dragon exhales #{example_types[@type]}!"
        puts " "
      else
        puts "The #{type} dragon is not in our database, proceed with caution!"
        puts " "
      end
  end
  #update_eggs
    #takes an integer as an arguement
    #egg_amt = integer arguement
    #print updated egg_amt
  def update_eggs(new_amt)
    @egg_amt = new_amt
    puts "This dragon now has #{@egg_amt} of eggs"
    puts " "
  end

  #update_treasure
    #takes a string as an arguement
    #favorite_treasure = string arguement
    #print updated favorite_treasure
  def update_treasure(new_treasure)
    @favorite_treasure = new_treasure
    puts "This dragon's new favorite treasure is #{@favorite_treasure}"
    puts " "
  end

  #print_dragon
    #prints out all current data about selected dragon
  def print_dragon
    puts "This is a #{@type} dragon"
    puts "This dragon is known to have #{@egg_amt} eggs"
    puts "This dragon's favorite treasure is #{@favorite_treasure}"
    puts " "
  end
end

#Initial driver code
#naoki = Dragon.new("mooshoo", "jade structures")
#naoki.breathe
#naoki.update_eggs(2)
#naoki.print_dragon
#naoki.update_treasure("gold coins")
#naoki.print_dragon

dragons = []
choice = " "
puts "Thank you for using our dragon reporting system!"
until choice == "e"
  puts "-Type 'n' to create a new dragon or 'e' to exit and finish your report."
  choice = gets.chomp
  if choice == "n"
    puts "Enter the dragon's type"
    type = gets.chomp
    puts "Enter the dragon's favorite treasure"
    treasure = gets.chomp
    dragons << Dragon.new(type, treasure)
  elsif choice == "e"
    break
  else
    puts "Invalid input"
  end
end

dragons.length.times do |index|
  puts "-Dragon number #{index + 1}"
  dragons[index].print_dragon
end

dragon_choice = " "
edit_choice = " "
puts "Is their further information about the dragon(s) you would like to add?"
until dragon_choice == "e"
  puts "-Enter the dragons associated number on the printed list to select that dragon to edit."
  puts "-Enter 'list' to review the data so far."
  puts "-Enter 'e' to exit the program and finish your edits"
  dragon_choice = gets.chomp
  if dragon_choice == "e"
    break
  elsif dragon_choice == "list"
    dragons.length.times do |index|
      puts "-Dragon number #{index + 1}"
      dragons[index].print_dragon
    end
  else
    puts "-Enter 'eggs' to update the amount of eggs the dragon has or 'treasure to update its favorite treasure."
    puts "-Enter 'breathe' to test the dragon's breath."
    puts "-Enter 'e' to exit to the previous menu."
    until edit_choice == "e"
      edit_choice = gets.chomp
      if edit_choice == "eggs"
        puts "Enter the new amount of eggs"
        new_eggs = gets.to_i
        dragons[dragon_choice.to_i - 1].update_eggs(new_eggs)
        break
      elsif edit_choice == "treasure"
        puts "Enter the new favorite treasure"
        new_treasure = gets.chomp
        dragons[dragon_choice.to_i - 1].update_treasure(new_treasure)
        break
      elsif edit_choice == "breathe"
        dragons[dragon_choice.to_i - 1].breathe
        break
      elsif edit_choice == "e"
        break
      else
        puts "Invalid choice"
      end
    end
  end
end

dragons.length.times do |index|
  puts "-Dragon number #{index + 1}"
  dragons[index].print_dragon
end






