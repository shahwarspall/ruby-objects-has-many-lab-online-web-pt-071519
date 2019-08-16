
class Artist

  attr_accessor :name
attr_reader :song
  

  def initialize(name)
  @name = name
   @all=[]
  end
 
def add_song(song)
    @all << song

    

    song.artist = self
  end

   def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @all << song_name
    

  end 

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

def self.song_count
    Song.all.count
  end 
end