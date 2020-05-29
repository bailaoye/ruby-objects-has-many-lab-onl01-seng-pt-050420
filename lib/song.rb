class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def add_artist(artist)
    artist.songs << self
  end

  def artist_name
    if song.artist != nil
      return song.artist
    else
      nil
    end
  end

end
