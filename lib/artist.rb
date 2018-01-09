require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs.each {|song| song}
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    binding.pry
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    if self.all.detect{|artist| artist.name == name}
      self.all.detect{|artist| artist.name == name}
    else
      Artist.new(name)
    end
  end

  def print_songs
    songs.collect {|song| puts song.name}
  end

  def self.all
    @@all
  end


end
