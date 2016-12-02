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
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] ? genre_hash[genre] += 1 : genre_hash[genre] = 1
    end
    genre_hash
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each do |artist|
      if artists_hash[artist]
        artists_hash[artist] += 1
      else
        artists_hash[artist] = 1
      end
    end
    artists_hash
  end

end
