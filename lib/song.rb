class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.create
    song.name = name
  end
end

# a = Song.new_by_name("Jeff")
a = Song.create
a.name = "Jeff"
Song.all.each {|song| puts song.name}
