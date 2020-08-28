class Artist
  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @@all << @name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.collect do |song|
      song.genre
    end
  end

  def new_song(song, genre)
    @song = song
    @genre = genre
  end

  def self.all
    @@all
  end
end
