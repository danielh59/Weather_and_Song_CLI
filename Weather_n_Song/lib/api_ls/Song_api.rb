class Lyrics

def self.lyrics_by_name_and_song(artist_name, song_name)
  artist_name = artist_name.split(" ").join("%20")
  song_name = song_name.split(" ").join("%20")

  url = "https://api.lyrics.ovh/v1/#{artist_name}/#{song_name}"
  response  = Net::HTTP.get(URI(url))

  lyrics_rough = JSON.parse(response){"lyrics"}
  lyrics_rough.each do |lyrics|
  the_lyrics = lyrics[1]
  ##note to self \n\n CREATES NEW LINES WHEN YOU USE 'PUTS'. LOOK NO FURTHER!!
  Song.new(artist: artist_name, song_title: song_name, song_lyrics: the_lyrics)
  # binding.pry
end
end


end
