class Song
    attr_accessor :name,:artist, :genre
    @@count=0
    @@genres=[]
    @@artists=[]
    def initialize(name,artist,genre)
        @name=name
        @genre=genre 
        @artist=artist
        @@count+=1
        @@genres << genre 
        @@artists << artist
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
        hash={} 
        @@genres.each do |genre|  
        hash[genre]||= hash[genre]=0
        hash[genre]+=1 
        end
        hash  
     
    end
        
    def self.artist_count 
        hash={}
        @@artists.each do |artist|
            hash[artist]||= hash[artist]=0 
            hash[artist]+= 1 
        end
        hash
    end
    
#||= is like an if statement
#-here we fist make an empty hash then we go through each artists in the @@artist class array
#so we are saying if we do have a hash with the key of artist then continue
#and if not (||=)we want to set the hash to have the key of artist and set it equal to zer
#and after iterate, so when we find an artist it starts at 0 and every time we 
#find one we will increment by one

end