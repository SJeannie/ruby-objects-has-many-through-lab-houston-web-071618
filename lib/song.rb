class Song

  attr_reader :name, :genre
  attr_accessor :artist

  @@all = []

  def self.all
    @@all
    # @@all.collect do |song|
    #   song.artist
    # end
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    Song.all << self
  end



end
