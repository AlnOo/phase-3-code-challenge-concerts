class Concert
    
    attr_reader :date, :band, :venue
    attr_writer :date, :band, :venue
  
    @@all = []
  
    def initialize(date, band, venue)
      @date = date
      @band = band
      @venue = venue
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    #returns true if the concert is in the band's hometown, false if it is not
    def hometown_show?
      if self.band.hometown == self.venue.city
        true
      else
        false
      end
    end
  
    #bands intro for the concert
    def introduction
      "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
    end
  end