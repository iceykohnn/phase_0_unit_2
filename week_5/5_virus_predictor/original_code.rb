# U2.W5: Virus Predictor

#  I worked on this challenge [with: Ariel Fogel and James Miller ].

#  This program is taking in key/value pairs and returning a string with data from
#     state_data.rb.

#  EXPLANATION OF require_relative
#     require_relative is a method used to pull the necessary data from another file into the
#     VirusPerdictor class.  it searches the current directory you are in.  it doesn't require
#     and extension because ruby will search for the correct file.

#  ExPLANATION OF state_data
#     state data is a hash within a hash, or a nested hash. The syntax differences are these: one hash is signified by the arrow => between the key and pair, and the second
# is signified by the colon : set between the key and pair.  


require_relative 'state_data'

class VirusPredictor
  # the initialize method is taking all the key value pairs and setting up the instance variables
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin  # for example, @state is the instance variable containing state_of_origin, etc.
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  # the virus effects method takes the results of two method's strings and 
  # returns them printed as one line of output.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    # The scope of the instance variables are within the Virus Predictor class.
    # When I remove the arguments and run this in irb, I get an arguement error. (0 for 3)
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  # private is data below this point that isn't accessible to the user.  If we pasted it above it include that 
  # method and not be available to be called.

  # the predicted deaths method uses if else statements to calculate number of deaths and return
  # a string with that number along with the state it is referencing
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end
    # case
    #   when @population_density >= 200  then number_of_deaths = (@population * 0.4).floor
    #   when @population_density >= 150  then number_of_deaths = (@population * 0.3).floor
    #   when @population_density >= 100  then number_of_deaths = (@population * 0.2).floor
    #   when @population_density >= 50   then number_of_deaths = (@population * 0.1).floor
    #   else number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # the speed of spread method calculates the density compared to speed of spread of the virus.
  # the less dense the population, the longer the virus takes to spread.  A string is returned
  # with the speed calculated.
  def speed_of_spread(population_density, state) #in months
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
    # case
    #   when @population_density >= 200  then speed += 0.5
    #   when @population_density >= 150  then speed += 1
    #   when @population_density >= 100  then speed += 1.5
    #   when @population_density >= 50   then speed += 2
    #   else speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

STATE_DATA.each {|state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population], data[:region], data[:regional_spread] )
  state.virus_effects
}

# I worked on this one with two other people, but by the end of my pairing session with them, I was still confused and had to leave 
# for my gps 2.1 session.  I understood it a little more later.

