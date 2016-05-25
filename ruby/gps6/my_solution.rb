# Virus Predictor

# I worked on this challenge [with John Lindner and Mason Brown].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# 'require_relative' acts as a link between Ruby files. It is different from 'require' in that 
# uses a relative filepath. 

require_relative 'state_data'

class VirusPredictor


# Initial method that takes a string and two integers as an argument, and passes those on to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
# Calls upon two private methods using instance variables as arguments
# Turns out, none of these methods require arguements as they utilize class attributes
# instead of normal variables
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# Method that takes two integers and a string as arguments. It has an if loop to declare
# what calculation to use and stores that in number_of_deaths. The calculation used is 
 # dependant on population density. It outputs a string with the results of the calculation
 # that includes the state name and number of deaths
  def predicted_deaths
    if @population_density >= 50
      number_of_deaths = (@population * ((@population_density * 0.02).floor * 0.1)).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    puts "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


# It takes an integer and string as arguments. It declares a float equal to zero. 
#  It has an if loop that performs a calculation based on population density. It
#  outputs a string with the results of the calculation.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

    if @population_density >= 200
      speed = 0.5
    else
      speed -= (@population_density * 0.02).floor * 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
 
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects
STATE_DATA.each do |key, value|
  VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population]).virus_effects
end

#=======================================================================
# Reflection Section
#1.
# The most noticable difference between the two hashes are the variables used.
# Here, we were introduced to constant viarables, as seen by STATE_DATA.
# Declared by making it all caps, constant variables can be accessed globally
# and cannot be altered by the program itself.
# A more fammiliar difference is how the two hashes assign values to their keys.
# Because the keys in STATE_DATA are strings, they require => to assign values, however
# the hash within those values use symbols, thus not requireing a =>.

#2.
# require_relative acts as a link between Ruby files. While require requires that
# the path to the linked ruby files be typed out, require_relative automatically
# finds the file relative to the directory you are working in.

#3.
# Hashes are compatible with .each and .times, they can not use .map as that iteration
# method always returns an array.

#4.
# Despite the fact that the two private methods ask for an arguement, they did not
# actually use them at all. Since we can use attributes throught the entire class without 
# re-declaring them, they can be placed in the code as is.

#5. 
# When creating the driver code, I had forgotten that we are able to create an 
#instance of a class without declaring a new instance variable.
