class Santa
  attr_reader :gender, :ethnicity, :reindeer_ranking, :age
  attr_accessor :gender, :ethnicity, :reindeer_ranking, :age
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
      "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a tasty #{cookie_type}"
  end
end

example_ethnicities = ["black", "white", "East-Asian", "Jewish",
"Middle-Eastern", "Native American/Canadian", "other", "N/A"]
example_genders = ["female", "transgender", "gender fluent", 
  "male", "bigender", "other", "N/A"]
santas = []
20.times do |index|
  #example_genders = example_genders.shuffle
  #example_ethnicities = example_ethnicities.shuffle
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  santas[index].age = rand(141)  
  puts "Santa number #{index + 1}"
  puts "Gender: #{santas[index].gender}"
  puts "Ethnicity: #{santas[index].ethnicity}"
  puts "Age: #{santas[index].age}" 
end

