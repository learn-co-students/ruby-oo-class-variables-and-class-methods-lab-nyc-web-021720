class Song
    attr_reader :name, :artist, :genre
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@genres << genre
        @@artists << artist
        @@count += 1
    end

    def self.all
        @@all
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}

        @@genres.each do |str|
            if genre_count[str]
                genre_count[str] += 1
            else
                genre_count[str] = 1
            end
        end

        genre_count
    end

    def self.artist_count
        artists_count = {}

        @@artists.each do |str|
            if artists_count[str]
                artists_count[str] += 1
            else
                artists_count[str] = 1
            end
        end

        artists_count 
    end

end
