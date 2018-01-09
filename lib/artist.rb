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
  end

  def self.find_or_create_by_name(artist)
    binding.pry
    if self.all.include?(artist)
      artist
    else
      Artist.new(artist)
    end
  end

  def print_songs
    @songs.each {|song| puts song}
  end

  def self.all
    @@all
  end


end
