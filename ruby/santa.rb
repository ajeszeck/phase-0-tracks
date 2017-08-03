class Santa
  attr_reader :name
  attr_accessor :age, :ethnicity, :gender

  def initialize(name)
    puts "initializing Santa instance ..."
    example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
    @name = name
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(141)
    @gender = example_genders.sample
    @ethnicity = example_ethnicities.sample 
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
    puts "Happy birthday Santa, you are now #{@age}!"
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
    puts "#{reindeer} was sent to the back of the line!"
  end
end

count = 0
while count < 101 
  santa = Santa.new("Santa ##{count}")
  puts "#{santa.name} --> Gender: #{santa.gender}, Ethnicity: #{santa.ethnicity}"
  count += 1
end
