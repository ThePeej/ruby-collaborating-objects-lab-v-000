require 'pry'

class MP3Importer
  attr_accessor :path, :files


  def initialize(path)
    @path = path
    # Dir.chdir(@path)
    # binding.pry
  end

  def files
    @files = Dir.glob("*mp3")
    binding.pry
  end

  def import

  end

end
