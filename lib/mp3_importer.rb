require 'pry'

class MP3Importer
  attr_accessor :path


  def initialize(path)
    @path = path
  end

  def files
    @path
    # binding.pry
  end

  def import

  end

end
