class Artist

  ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []

    ALL << self
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

  def self.all
    return ALL
  end

end
