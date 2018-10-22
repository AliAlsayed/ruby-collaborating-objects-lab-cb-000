class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file = file.split("-")
    song = Song.new(file[0].strip)
    song.artist = Artist.find_or_create_by_name(file[1].strip)
  end
end
