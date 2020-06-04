class The_Weatherr
  attr_accessor :the_city, :the_country_or_state, :the_weather_conditions, :temp_min, :humidity, :temp_max

@@all_cities = []
def initialize(the_city:, the_country_or_state:, the_weather_conditions:)
  @the_city = the_city
  @the_country_or_state = the_country_or_state
  @the_weather_conditions = the_weather_conditions
  @temp_min =  @the_weather_conditions["temp_min"]
  @humidity = @the_weather_conditions["humidity"]
  @temp_max = @the_weather_conditions["temp_max"]
@@all_cities << self
end

# def self.the_city
#   @the_city
# end
#
# def self.the_country_or_state
#   @the_country_or_state
# end

# def self.the_weather_conditions
#   @@the_weather_conditions
#   @@temp_min
#   @@humidity
#   @@temp_max
# end
def all_cities
  @@all_cities
end


end
