require 'pry'

class MP3Importer
  attr_accessor :path, :files


  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir @path
    @files = Dir.glob("*mp3")
    # binding.pry
  end

  def import

  end

end
