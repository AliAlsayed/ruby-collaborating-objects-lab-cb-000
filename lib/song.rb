class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file = file.split("-")
    song = self.new(file[1].strip)
    artist = Artist.new(file[1].strip)
    song.artist =  artist
    artist.add_song(song)

  end
end
