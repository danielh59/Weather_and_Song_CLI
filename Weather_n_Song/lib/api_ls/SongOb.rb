class Song

    attr_accessor :artist, :song_title, :song_lyrics

    @@all = []
    @@all_songs = []
    @@all_artists = []
    def initialize(artist:, song_title:, song_lyrics:)
        @artist = artist
        @song_title = song_title
        @song_lyrics = song_lyrics
        @@all_songs << song_title
        @@all_artists << artist
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_artists
        @@all_artists
    end

    def self.all_songs
          @@all_songs
    end

end
