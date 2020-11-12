require 'pry'

class Song
    attr_accessor :name, :artist, :genre, :count
    attr_reader :genre_count, :artist_count

    @@count = 0
    @@artists = []
    @@genres = []

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
        genres = {}
        @@genres.each do |g|
            if genres.keys.include?(g)
                genres[g] += 1
            else
                genres[g] = 1
            end
        end
        genres
    end

    def self.artist_count
        artists = {}
        @@artists.each do |g|
            if artists.keys.include?(g)
                artists[g] += 1
            else
                artists[g] = 1
            end
        end
        artists
    end

end
