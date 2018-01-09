require 'pry'

class MP3Importer
  attr_accessor :path, :files


  def initialize(path)
    @path = path
    Dir.chdir @path
  end

  def files
    @files = Dir.glob("*mp3")
    @files
    binding.pry
  end

  def import

  end

end
