class Artist

  @@all = []

  def initialize
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(song, genre)
    @song =
    @genre = genre
  end

  def self.all
  end


end
