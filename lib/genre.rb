class Genre
    attr_accessor :name
  
    # empty Class variable (array) to hold all Genres
    @@all = []
  
    # initialized Genre with a name and is saved in the @@all array
    def initialize(name)
      @name = name
      @@all << self
    end
  
    # Class method that knows each Genre in the class variable
    def self.all
      @@all
    end
  
    # instance method that iterates through all songs and finds the songs that belong to that genre
    def songs
      Song.all { |song| song.genre == self }
    end
  
    # instance method that iterates over the genre's collection of songs and collects the artist that owns each song
    def artists
      songs.map(&:artist)
    end
  
   
    def add_song(song)
      songs << song
    end
  end