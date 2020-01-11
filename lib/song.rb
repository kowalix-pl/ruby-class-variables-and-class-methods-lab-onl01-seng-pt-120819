class Song 
@@count = 0
@@artists = []
@@genres = []
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
  @@genres = {genre, count}
  @@genres.each do |genre|
  if @@genre_count[genre]
     @@genre_count[genre] += 1
        
end
end
end 
end 
 
 
 
