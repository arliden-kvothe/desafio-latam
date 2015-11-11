class Song
  @@plays = 0 # variable de clase
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end

  def Song.play
    @plays += 1 # same as @plays = @plays + 1
    @@plays += 1
    puts "This song #@name: #@plays plays. Total #@@plays plays."
  end

end


s1 = Song.new("Track 1", "Artist1", 234) # test songs..
s2 = Song.new("Song2", "Artist2", 345)
s3 = Song.new("Song 3", "Artist3", 134)

Song.play
s2.play
s1.play
s1.play
s3.play
s1.play
s2.play




