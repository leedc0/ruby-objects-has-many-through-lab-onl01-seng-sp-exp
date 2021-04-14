class Song
    attr_reader :artist, :genre
    attr_accessor :name
  
    # empty Class variable (array) to hold all Songs
    @@all = []
  
    # initialized Genre with a name, and artist, and a genre and is saved in the @@all array
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@all << self
    end
  
    # Class method that knows each Song in the class variable
    def self.all
      @@all
    end
  
    # def say_hi
    #   puts 'hi'
    # end
  end