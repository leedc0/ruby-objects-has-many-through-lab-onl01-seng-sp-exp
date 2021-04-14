class Artist
    attr_accessor :name
  
    # empty Class variable (array) to hold all Artist
    @@all = []
  
    # initialized Artist with a name and is saved in the @@all array
    def initialize(name)
      @name = name
      @@all << self
    end
  
    # Class method that knows each Artist in the class variable
    def self.all
      @@all
    end
  
    # instance method that takes in an argument of a name and genre creates a new song associated with the artist
    def new_song(name, genre)
      Song.new(name, self, genre)
    end
  
    # instance method that iterates through all songs and finds the songs that belong to that artist using 'select'
    def songs
      Song.all.select { |song| song.artist == self }
    end
  
    # instance method that iterates over that artist's songs and collects the genre of each song
    def genres
      songs.map(&:genre)
    end
  end