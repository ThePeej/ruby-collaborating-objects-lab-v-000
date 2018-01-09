require 'pry'

class MP3Importer
  attr_accessor :path, :files


  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob(@path + "/*")
    # binding.pry
    @files.each_with_index do |file, index|
      @files[index] = file.scan(/mp3s\/(.*)/)[0][0]
    end
    @files
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
      binding.pry
      song.artist.save
    end
    # binding.pry
  end

end
