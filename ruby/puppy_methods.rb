class Puppy
  def initialize
    
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(num_of_barks)
    num_of_barks.times{puts "Woof"}
  end
  def roll_over
    puts "Rolled over"
  end
  def dog_years(human_years)
    human_years * 7
  end
  def jump_on_table
    puts "I need that sandwich!"
  end
  def scratch_ankle
    puts "I love you human"
  end
  def eat(menu_item)
    puts "I love begging for #{menu_item}!"
  end
end

dogs = []
50.times do
    dogs << Puppy.new
end

dogs.each do |dog|
  dog.scratch_ankle
  dog.eat("grass")
end


