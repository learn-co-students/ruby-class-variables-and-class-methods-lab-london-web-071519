require 'pry'

class Song

    attr_accessor :name, :artist, :genre 

    @@count = 0
    @@artists = []
    @@genres = []
    

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
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
        my_array = {}
        @@genres.each do |genre|
            my_array[genre] = @@genres.count(genre)
        end
        puts my_array
        return my_array
    end


    def self.artist_count
        my_array = {}
        @@artists.each do |artist|
            my_array[artist] = @@artists.count(artist)
        end
        return my_array
    end

end
