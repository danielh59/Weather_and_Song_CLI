class Song

  attr_accessor :artist, :song_title, :song_lyrics

@@all = []

  def initialize(artist:, song_title:, song_lyrics:)
@@artist = artist
@@song_title = song_title
@@song_lyrics = song_lyrics
@@all << self
  end

  def self.all
      @@all
  end

def self.song_lyrics
  @@song_lyrics
end

def self.song_title
  title_rough = @@song_title.gsub(/[%20]/, " ")
  title_rough2 = title_rough.split(' ')
  title_rough3 = title_rough2.collect {|x| x.capitalize}
  @@song_title = title_rough3.join(' ')
end

def self.artist
  artist_rough = @@artist.gsub(/[%20]/, " ")
   artist_rough2 = artist_rough.split(' ')
   artist_rough3 = artist_rough2.collect {|x| x.capitalize!}
   @@artist = artist_rough3.join(' ')
end

  def self.show_me_song
    puts " "
    puts "Here's our artist: #{self.artist}"
    puts "Here's our song title: #{self.song_title}"
    puts " "
    puts "And finally, our lyrics:\n\n #{self.song_lyrics}"
    puts " "
  end


end
