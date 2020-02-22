require 'pry'
class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@all = []

    attr_accessor :name, :artist, :genre
    # attr_reader :count

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        @@all << self
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
        #return array of genres
        @@genres.uniq
    end 
    
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre_name|
            # binding.pry
            if genre_count[genre_name]
                genre_count[genre_name] += 1
            else 
                genre_count[genre_name] = 1
            end 
        end 
        genre_count
    end 

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist_names|
            if artist_count[artist_names]
                artist_count[artist_names] += 1
            else 
                artist_count[artist_names] = 1
            end 
        end 
        artist_count
    end 
    

end 

