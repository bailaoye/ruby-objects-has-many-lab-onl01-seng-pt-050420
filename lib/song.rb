class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@songs << self
  end

  def self.all
    @@songs
  end

  def add_artist(artist)
    artist.songs << self
  end

end
