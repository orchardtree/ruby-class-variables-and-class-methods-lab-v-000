require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
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
    artists_unique = []
    @@artists.each do |artist|
      if artists_unique.include?(artist)
        artists_unique << artist
      end
    end
    artists_unique
    #binding.pry
  end

  def self.genres
    @@genres
  end
end