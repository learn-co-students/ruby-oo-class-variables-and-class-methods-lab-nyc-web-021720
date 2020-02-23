class Song
  
  attr_reader :name, :genre, :artist

  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist 
    @@count += 1
    Song.all << self
    @@artists << self.artist
    @@genres << self.genre
  end

  def self.all
    @@all
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
    @@genres.reduce({}) do |memo, genre|
      memo[genre] ||= memo[genre] = 0 
      memo[genre] += 1 
      memo
    end
  end

  def self.artist_count
    @@artists.reduce({}) do |memo, artist|
      memo[artist] ||= memo[artist] = 0
      memo[artist] += 1
      memo
    end
  end
  
end