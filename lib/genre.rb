class Genre

  ALL = []

  attr_accessor :name

  def initialize(name)
    @name = name

    ALL << self
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


  def self.all
    return ALL
  end

end
