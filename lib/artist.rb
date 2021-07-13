require "pry"

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(word)
    if Artist.all.any? { |artist| artist.name == word }
      Artist.all.find { |artist| artist.name == word }
    else
      Artist.new(word)
    end
  end

  def print_songs
    Song.all.select { |song| song.artist == self }.each do |song_instance|
      puts song_instance.name
    end
  end
end
