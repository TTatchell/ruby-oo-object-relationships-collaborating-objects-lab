require "pry"

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
    song_instance = Song.new(split[1])
    song_instance.artist_name=(split[0])
    
    song_instance
  end

  def artist_name=(name)
    artist_instance = Artist.find_or_create_by_name(name)
    artist_instance.add_song(self)
    @artist = artist_instance
    

  end
end
