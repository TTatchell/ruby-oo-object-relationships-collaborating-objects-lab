class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.children(@path)
  end

  def import
    Dir.children(@path).each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
end
