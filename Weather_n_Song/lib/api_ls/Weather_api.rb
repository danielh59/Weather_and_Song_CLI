class Weather_

def self.current_weather(city, country_or_state)
city =  city.split(" ").join("%20")
country_or_state = country_or_state.split(" ").join("%20")
location = "#{city}, #{country_or_state}"
url = "http://api.openweathermap.org/data/2.5/weather?q=#{city},#{country_or_state}&units=imperial&appid=5c883d0726f6af05c3159d7174e73fc4"
response  = Net::HTTP.get(URI(url))
the_weather = JSON.parse(response)
the_weather.each do |x|
  a_city = the_weather["name"]
  a_country_or_state = the_weather["sys"]["country"]
  a_weather_conditions = the_weather["main"]
The_Weatherr.new(the_city: a_city, the_country_or_state: a_country_or_state, the_weather_conditions: a_weather_conditions)
end
end


end
