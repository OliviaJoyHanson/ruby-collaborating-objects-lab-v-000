require 'pry'
class Song
  attr_accessor :name, :artist, :mp3_importer
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    file_array = file.chomp(".mp3").split(" - ")
    song = self.new(file_array[1])
    song.artist_name(file_array[0])
    song
  end

  def artist_name(artistname)
    self.artist = Artist.find_or_create_by_name(artistname)
    artist.add_song(self)
  end


end
