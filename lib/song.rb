require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    name = filename.split(" - ")[1]
    self.new(name)
    binding.pry
  end

end
