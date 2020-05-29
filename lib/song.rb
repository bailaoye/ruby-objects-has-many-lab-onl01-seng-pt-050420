class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def add_artist(artist)
    artist.songs << self
  end


end
