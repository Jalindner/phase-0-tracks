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
    print_dragon
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

naoki = Dragon.new("mooshoo", "jade structures")
naoki.breathe
naoki.update_eggs(2)
naoki.print_dragon
naoki.update_treasure("gold coins")
naoki.print_dragon





