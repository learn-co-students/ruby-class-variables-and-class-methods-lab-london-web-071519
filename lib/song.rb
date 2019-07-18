require "pry"

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre 
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
    @@genres.each do |all_instances|
     if @@genre_count[all_instances] 
        @@genre_count[all_instances] += 1
     else @@genre_count[all_instances] = 1 
   end 
  end  
 @@genre_count
end

def self.artist_count
  @@artists.each do |all_instances_artists|
    if @@artist_count[all_instances_artists]
       @@artist_count[all_instances_artists] += 1 
    else @@artist_count[all_instances_artists] = 1 
    end 
  end 
 @@artist_count
end 

end