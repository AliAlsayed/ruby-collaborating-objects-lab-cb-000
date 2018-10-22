class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    file = Dir[path]
  end
end
