
#song is the single source of truth for this relationship
#Genre has many artists through songs
class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end

# Song.new("99 Problems", jay_z, rap)
# shrimp = Song.new("Big Shrimpin", jay_z, rap)
