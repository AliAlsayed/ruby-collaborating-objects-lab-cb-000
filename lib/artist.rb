class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song. artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def find_or_create_by_name(name)
  end

  def songs
    puts @songs
  end

  def save
    @@all << self
  end
end
