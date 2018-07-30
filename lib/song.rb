class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artist_count = Hash.new
    @@artists.each {|artist| artist_count[artist] +=1}
    artist_count
  end
end
