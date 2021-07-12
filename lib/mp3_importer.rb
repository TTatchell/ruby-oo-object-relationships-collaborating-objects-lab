class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.children(@path)
  end

  def import(song_array)
    song_array.each do |song_name|
      song_name #Song.new.etc
    end
  end
end
