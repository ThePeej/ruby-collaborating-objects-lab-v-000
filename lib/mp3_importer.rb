require 'pry'

class MP3Importer
  attr_accessor :path, :files


  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob(@path + "/*")
    # binding.pry
  end

  def import
    # binding.pry
    self.files
    @files.each do |file|
      name = file.split(" - ")[0]
      title = file.split(" - ")[1]
      song = Song.new(title)
      song.artist = Artist.new(name)
      song
    end

  end

end
