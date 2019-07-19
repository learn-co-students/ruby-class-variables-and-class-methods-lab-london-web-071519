
class Song

  attr_accessor :name, :count, :artist, :genre, :genre_count, :artist_count

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre


    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.name
    @name
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

  def self.genre_count
    genre_count = {}
    @@genres.each {|genre| genre_count[genre] = @@genres.count(genre)}
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each {|artist| artist_count[artist] = @@artists.count(artist)}
    artist_count
  end
end


a = Song.new("Yu", "rap", "c")
a = Song.new("a", "rap", "c")
a = Song.new("a", "rap", "c")
puts Song.count
puts Song.artists
puts Song.genres
p Song.genre_count
