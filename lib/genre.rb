class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all do |song| 
      song.genre == self
    end
  end

  def artists
    songs.map{|song| song.artist}
  end

  def add_song(song)
    self.songs << song
  end

end
