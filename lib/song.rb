require 'pry'
class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def self.new_by_filename(string)
    split = string.split(" - ")
    tmp = Song.new(split[1])
    @artist = split[0]
    tmp

    
    
  end
end
