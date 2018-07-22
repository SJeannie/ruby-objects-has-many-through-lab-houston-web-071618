class Genre

  attr_reader :name

  @@all = []

  def self.all
    @@all
    # @@all.collect do |genre|
    #   song.artist
    # end
  end

  def initialize(name)
    @name = name
    Genre.all << self
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end


end
