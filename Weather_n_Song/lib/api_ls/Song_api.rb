 class Lyrics

    def self.lyrics_by_name_and_song(artist_name, song_name)
        artist_name = artist_name.split(" ").join("%20")
        song_name = song_name.split(" ").join("%20")

        url = "https://api.lyrics.ovh/v1/#{artist_name}/#{song_name}"
        response  = Net::HTTP.get(URI(url))
        lyrics_rough = JSON.parse(response){"lyrics"}
          the_lyrics = lyrics_rough["lyrics"]

        artist_rough  = artist_name.to_s.gsub(/[%20]/, " ")
        artist_rough2 = artist_rough.split(' ')
        artist_rough3 = artist_rough2.collect {|x| x.capitalize!}
        artist = artist_rough3.join(' ')

        title_rough = song_name.to_s.gsub(/[%20]/, " ")
        title_rough2 = title_rough.split(' ')
        title_rough3 = title_rough2.collect {|x| x.capitalize}
        song_title = title_rough3.join(' ')
        Song.new(artist: artist, song_title: song_title, song_lyrics: the_lyrics)
      end


    def self.sample_lyrics(artist_name, song_name)
        artist_name = artist_name.split(" ").join("%20")
        song_name = song_name.split(" ").join("%20")

        url = "https://api.lyrics.ovh/v1/#{artist_name}/#{song_name}"
        response  = Net::HTTP.get(URI(url))

        lyrics_rough = JSON.parse(response){"lyrics"}
        lyrics_rough.each do |lyrics|
        the_lyrics = lyrics[1]
        puts "#{the_lyrics}"
        end
    end

    def self.sample_list(a_sample)
      case a_sample
        when 1
          puts "Song name: God's Plan"
          puts " "
          self.sample_lyrics("Drake", "God's Plan")
        when 2
          puts "Song name: Bicycle Race"
          puts " "
          self.sample_lyrics("Queen", "Bicycle Race")
        when 3
          puts "Song name: Merlot"
          puts " "
          self.sample_lyrics("Smino", "Merlot")
        when 4
          puts "Song name: Lovely Day"
          puts " "
          self.sample_lyrics("Bill Withers", "Lovely Day")
        else
      "Incorrect Output"
      end
    end
end
