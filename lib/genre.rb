require 'pry'
class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    binding.pry
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.collect do |song|
      song.artist
    end

  def self.all
    @@all
  end
end





end
