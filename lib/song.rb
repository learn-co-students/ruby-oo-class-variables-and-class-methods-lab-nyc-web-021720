
require "pry"

class Song
    
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(song_name, song_artist, song_genre)
        @name = song_name
        @artist = song_artist
        @genre = song_genre

        @@all << self

        @@count += 1

        @@artists.push(@artist)

        @@genres.push(@genre)
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
        counts = {}
        puts @@genres
        @@genres.each do |genre|
            if !counts.has_key?(genre) then
                counts[genre] = 0
            end
            counts[genre] += 1
        end
        counts
    end

    def self.artist_count
        counts = {}
        @@artists.each do |artist|
            if !counts.has_key?(artist) then
                counts[artist] = 0
            end
            counts[artist] += 1
        end
        counts
    end
end