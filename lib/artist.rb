class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(Song)
    @songs << Song
  end

end
