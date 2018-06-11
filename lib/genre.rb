class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song, artist)
    Song.new(song, artist, self)
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    self.songs.map {|song| song.artist}
  end

  def self.all
    @@all
  end
end
