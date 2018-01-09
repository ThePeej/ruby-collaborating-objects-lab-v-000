class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize
    @songs = []
  end

  def save
    @@all << Song
  end

end
