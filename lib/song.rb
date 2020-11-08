class Song
    attr_accessor :name, :artist, :genre, :count

    @@count = 0
    @@artists = []
    @@genres = []
    @@all = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all << self
    end

    def self.all
        @@all
    end

    def self.count
        @@count
    end

    def self.genres
        uniq_gen = self.all.map do |song|
            song.genre
        end
        uniq_gen.uniq
    end



    def self.artists
        uniqu_artist = self.all.map do |song|
            song.artist
        end
        uniqu_artist.uniq
    end

    def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end


end