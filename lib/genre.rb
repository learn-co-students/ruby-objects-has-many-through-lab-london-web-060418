#
# A genre has many songs and an artist has many songs.
class Genre

  attr_accessor :name, :artist, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end


end

# rap = Genre.new("rap")
# Song.new("99 Problems", jay_z, rap)
# shrimp = Song.new("Big Shrimpin", jay_z, rap)
