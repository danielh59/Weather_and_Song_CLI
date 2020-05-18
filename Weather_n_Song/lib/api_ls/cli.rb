class Cli

def execute
  puts " "
  puts "Welcome to my Weather and Song CLI"
  puts " "
  puts "The purpose of this CLI is to have the ability to sing along"
  puts "to your favorite songs by looking up the lyrics while getting the weather!"
  puts " "
  puts"Please enter Artist name"
  puts " "
@name = gets.downcase.strip
  # binding.pry
puts " "
puts "Please enter Artist song"
puts " "
@song_name = gets.downcase.strip
  Lyrics.lyrics_by_name_and_song(@name, @song_name)

puts Song.show_me_song

  puts "Afterwards, you will be given the option to get the weather "
  puts " "
  puts "This CLI will only show the location, main weather conditions "
  puts "Please first enter location by City(initials will not work, but spaces are permitted!)"
  puts " "
  @city= gets.downcase.strip
  puts " "
  puts "Next enter your country/state"
  @country_or_state = gets.downcase.strip
  puts " "
  Weather_.current_weather(@city, @country_or_state)
puts The_Weatherr.show_me_weather
puts " "
end


end
