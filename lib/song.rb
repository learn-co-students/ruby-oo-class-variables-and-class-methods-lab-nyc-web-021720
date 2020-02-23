require 'pry'

class Song 
 attr_accessor :name, :artist, :genre   
@@count = 0
@@genres = []
@@artists = []
def initialize(name,artist,genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count += 1 
        @@genres << genre 
        @@artists << artist
    end 
    def self.count 
        @@count 
    end 
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end  
    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            hash.has_key?(genre) ? hash[genre] += 1 : hash[genre] = 1 
        end 
        hash
    end 
    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            hash.has_key?(artist) ? hash[artist] += 1 : hash[artist] = 1 
        end 
        hash
    end 

end 