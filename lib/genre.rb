class Genre
attr_accessor :name, :song, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
   Song.all.select do |song|
     song.genre == self
   end
  end

  def artists
    songs.map do |item|
      item.artist
      # binding.pry
    end
  end
end
