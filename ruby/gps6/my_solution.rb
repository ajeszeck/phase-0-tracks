# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative gives you access to the file called state_data.rb
# Relative means it is in relative placement to the current file.

require_relative 'state_data'

class VirusPredictor
  # This method initializes an instance of the class, 
  # Uses arguments to set the attributes of the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls predicted_deaths method and speed_of_spread method.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Determines the number of deaths based on population density
  # and prints out report of result
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    ratios = {200 => 0.4,
            150 => 0.3,
            100 => 0.2,
            50 => 0.1 }

    number_of_deaths = 0
    ratios.each do |density_constant, speed_constant|
      if @population_density >= density_constant
        number_of_deaths = (@population * speed_constant).floor 
      else 
        number_of_deaths = (@population * 0.05).floor
      end  
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # if @population_density >= 200
  #   number_of_deaths = (@population * 0.4).floor
  # elsif @population_density >= 150
  #   number_of_deaths = (@population * 0.3).floor
  # elsif @population_density >= 100
  #   number_of_deaths = (@population * 0.2).floor
  # elsif @population_density >= 50
  #   number_of_deaths = (@population * 0.1).floor
  # else
  #   number_of_deaths = (@population * 0.05).floor
  # end

  # Method that uses population_density to determine the rate of spread (speed)
  # And prints a report of result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed_ratios = {200 => 0.5, 
                    150 => 1, 
                    100 => 1.5, 
                    50 => 2}

    speed = 0.0

    speed_ratios.each do |density_constant, speed_constant|
      if @population_density >= density_constant
        speed += speed_constant
      else 
        speed += 2.5
      end
    end

    puts " and will spread across the state in #{speed} months.\n\n"

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_data|
  each_state = VirusPredictor.new(state, state_data[:population_density], state_data[:population])
  each_state.virus_effects
end

#=======================================================================
# Reflection Section