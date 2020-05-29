class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.all
    @songs
  end

  def add_artist(artist)
    artist.songs << self
  end

end
