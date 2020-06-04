class Cli

    def welcome_prompt
        puts " "
        puts "Welcome to my Weather and Song CLI!
          *press enter to continue*"
        puts " "
    end
    def purpose_prompt
        puts "The purpose of this CLI is to have the ability to sing along"
        puts "to your favorite songs by looking up the lyrics while getting the weather!
            *press enter to continue*"
        puts " "
      end

    def instructions_prompt
        puts " Pick a number from the list to display the artist and lyrics
        from a preselected song. Afterwhich, the lyrics of the song will be displayed.
          *press enter to continue*"
    end

    def sample_prompt
        puts " "
        puts "Enter a number from the list to pick artist.
        Type enter 'continue' to continue on with the program"
    end

    def sample_list_artist_songs
        list_of_artist = ["Drake", "Queen", "Smino", "Bill Withers" ]
        list_of_artist.each_with_index do |x, index|
          puts "#{index + 1}.) #{x} \n\n"
        end
    end

def cli_prompt
  puts "    **Now we'll move on to the actual CLI**\n
  Enter 'continue' to continue on with the CLI\n
  Enter 'all songs', for all the songs you entered\n
  Enter 'all artists' for all the songs you entered"
end
    def artist_prompt
      puts " "
      puts"Please enter Artist name"
      puts " "
    end

    def song_prompt
      puts " "
      puts "Please enter Artist song"
      puts " "
    end
    def show_me_song(song)
        puts " "
        puts "Here's our artist: #{song.artist}"
        puts "Here's our song title: #{song.song_title}"
        puts " "
        puts "And finally, our lyrics:\n\n #{song.song_lyrics}"
        puts " "
    end

    def show_me_weather(weather)
      puts " "
      puts "Here's our city: #{weather.the_city}"
      puts "Here's our country/state: #{weather.the_country_or_state}"
      puts " "
      puts "And finally, our main weather conditions:

      the temperature: #{weather.temp_min}
      the temperature max: #{weather.temp_max}
      the humidity: #{weather.humidity}"
      puts " "
    end

    def artist_n_song
      artist_prompt
      @name = gets.downcase.strip
      song_prompt
      @song_name = gets.downcase.strip
      new_song =  Lyrics.lyrics_by_name_and_song(@name, @song_name)
      show_me_song(new_song)
    end

    def execute
        welcome_prompt
        gets
        purpose_prompt
        gets
        instructions_prompt
    # method print list of artist
        gets
        sample_list_artist_songs

        @sample = gets.strip

        while @sample != "continue"
          @sample = @sample.to_i
            if @sample.to_i > 0 && @sample.to_i < sample_list_artist_songs.length
                Lyrics.sample_list(@sample)
            else
                puts "Incorrect Output. Try again."
            end
            sample_prompt
            @sample = gets.strip
    #     end
        puts " "
        #
    #
        puts " "
        cli_prompt
        puts " "
        #
         @input = gets.strip
         # binding.pry
        while @input != "continue"
          @input = gets.strip
          artist_n_song
          cli_prompt
        @input
         end

        puts "***Now for the weather***"
        puts " "
        puts "This CLI will only show the location and main weather conditions "
        puts "Please first enter location by City\n(initials will not work, but spaces are permitted!)"
        puts " "
          @city = gets.downcase.strip
        puts " "
        puts "Next enter your country/state"
          @country_or_state = gets.downcase.strip
        puts " "
          the_weather = Weather_.current_weather(@city, @country_or_state)
         show_me_weather(the_weather)
        puts " "
     #
       end

end
