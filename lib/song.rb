class Song

  ALL = []

  attr_accessor :genre, :artist
  attr_reader :title

  def initialize(name, artist, genre)
    @title = name
    @artist = artist
    @genre = genre

    ALL << self
  end

  def self.all
    return ALL
  end

end
