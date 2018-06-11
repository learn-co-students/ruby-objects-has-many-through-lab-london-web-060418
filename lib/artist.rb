# require 'pry'

class Artist

  attr_accessor :name, :genre, :song

  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end

  #knows about all artist instances
  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  #iterates through all songs and finds the songs that belong to that artist.
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  # iterates over that artist's songs and collects the genre of each song.
  def genres
    songs.map do |song|
      song.genre
    end
  end


end

# jay_z = Artist.new("Jay-Z")
# kendrick = Artist.new("Kendrick Lamar")
# jay_z = Artist.new("Jay-Z")
# rap = Genre.new("rap")
# ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)




# Pry.start
