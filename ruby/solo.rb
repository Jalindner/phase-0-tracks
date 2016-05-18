class Dragon
  attr_accessor :type, :favorite_treasure, :egg_amt, :wing_pairs
  #initialize for Dragon
    #Dragon type
    #favorite_treasure
    #number of eggs
  def initialize(type, favorite_treasure, wing_pairs)
    @type = type
    @favorite_treasure = favorite_treasure
    @wing_pairs = wing_pairs
    @egg_amt = 0
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
      else
        puts "The #{type} dragon is not in our database, proceed with caution!"
      end
  end
end

naoki = Dragon.new("undead", "jade structures", 3)
naoki.breathe