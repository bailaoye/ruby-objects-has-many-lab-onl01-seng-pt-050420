class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  #class method
  def self.song_count
    #get # of all songs associated w artist
    Song.all.select {|song| song.artist != nil}.length
  end
end
