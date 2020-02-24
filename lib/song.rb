class Song 
    attr_reader :name, :artist, :genre
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
        hash = {}
        @@genres.each do |key|
            if hash[key]
                hash[key] += 1
            else
                hash[key] = 1  
            end

        end
        hash

    end

    def self.artist_count
        hash = {}
        @@artists.each do |key|
            if hash[key]
                hash[key] += 1
            else
                hash[key] = 1  
            end

        end
        hash
    end


   

end
