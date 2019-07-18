class Song
    attr_accessor :name, :artist, :genre

        @@count = 0
        @@artists = []
        @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @@count += 1
        @artist = artist
        @@artists << artist
        @genre = genre
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
        output = {}
        unique_genres = @@genres.uniq
        unique_genres.each { |genre|
            output[genre] = @@genres.count(genre)
        }
        output
    end

    def self.artist_count
        output = {}
        unique_artists = @@artists.uniq
        unique_artists.each { |artist|
            output[artist] = @@artists.count(artist)
        }
        output
    end
end