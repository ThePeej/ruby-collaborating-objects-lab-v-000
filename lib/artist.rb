class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def add_song(name)


  end

  def find_or_create_by_name(artist)
    if @@all.include?(artist)
      artist
    else
      Artist.new(artist)
    end
  end

  def print
    @songs.each {|song| puts song}
  end


end
