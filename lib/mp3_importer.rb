class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    file = Dir.entries(path).select{|f| !File.directory?(f)}
  end
end
