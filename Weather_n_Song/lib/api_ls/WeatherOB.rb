class The_Weatherr
  attr_accessor :the_city, :the_country_or_state, :the_weather_conditions

@@all = []
def initialize(the_city:, the_country_or_state:, the_weather_conditions:)
  @@the_city = the_city
  @@the_country_or_state = the_country_or_state
  @@the_weather_conditions = the_weather_conditions
@@all << self
end

def self.the_city
  @@the_city
end

def self.the_country_or_state
  @@the_country_or_state
end

def self.the_weather_conditions
  @@the_weather_conditions
end

def self.show_me_weather
  puts " "
  puts "Here's our city: #{self.the_city}"
  puts "Here's our country/state: #{self.the_country_or_state}"
  puts " "
  puts "And finally, our main weather conditions:\n\n #{self.the_weather_conditions}"
  puts " "
end

end
