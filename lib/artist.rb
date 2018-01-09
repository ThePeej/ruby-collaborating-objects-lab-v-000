class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize
    @songs = []
  end

  def save
    @@all << self
  end

  def find_or_create_by_name(artist)
    if

end
