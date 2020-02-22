require "pry"
class Song
    attr_accessor :name, :artist, :genre
    @@all = []
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

        @@all << self
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
            # if artist_str == artist
            # end

    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        
        @@genres.each do |genre|
            genre_hash[genre] ||= 0
            genre_hash[genre] += 1
        end
        genre_hash
        
    end


    def self.artist_count
        artist_hash = {}

        @@artists.each do |artist|
            artist_hash[artist] ||= 0
            artist_hash[artist] += 1
        end
        artist_hash
    end

    
    def self.all
        @@all
    end
end