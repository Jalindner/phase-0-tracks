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
    # predicted deaths is solely based on population density
    #if @population_density >= 200
    #  number_of_deaths = (@population * 0.4).floor
    #elsif @population_density >= 150
    #  number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
    #  number_of_deaths = (@population * 0.2).floor
    if @population_density >= 50
      number_of_deaths = (@population * ((@population_density * 0.02).floor * 0.1)).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    #population density = population_density * .001, population / 100
    #population density-=50




    puts "#{@state} will lose #{number_of_deaths} people in this outbreak"


  end


# It takes an integer and string as arguments. It declares a float equal to zero. 
#  It has an if loop that performs a calculation based on population density. It
#  outputs a string with the results of the calculation.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
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
#driver_array =[]
STATE_DATA.each do |key, value|
  VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population]).virus_effects
end

#driver_array.length.times do|index|
#  driver_array[index].virus_effects
#end


#=======================================================================
# Reflection Section