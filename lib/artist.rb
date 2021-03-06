require 'pry'

class Artist

    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def save
        @@all << self
    end

    def add_song(song)
        @songs << song
    end

    def self.find_or_create_by_name(name)
        if @@all.find {|artist| artist.name == name}
            @@all.find {|artist| artist.name == name}
        else
            new_artist = Artist.new(name)
            new_artist.save
            new_artist
        end
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end

    def self.all
        @@all
    end

end

 