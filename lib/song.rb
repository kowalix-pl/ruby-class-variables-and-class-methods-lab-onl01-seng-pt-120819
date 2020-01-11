class Song 
@@count = 0
@@artists = []
@@genres = []
@@artists_count = {}
@@genre_count = {}

 attr_accessor :name, :artist, :genre
def initialize (name,artist,genre)
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
  @@genres.uniq!
end

def self.artists
  @@artists.uniq!
end


def self.genre_count
 
  @@genres.each do |genre,count|
  if @@genre_count[genre]
     @@genre_count[genre] += 1
  else 
    @@genre_count[genre] = 1
end
end
@@genre_count
end

def self.artist_count
 
  @@artists.each do |artist,count|
  if @@artists_count[artist]
     @@artists_count[artist] += 1
  else 
    @@artists_count[artist] = 1
end 
end
@@artists_count
end
end  
 
 
