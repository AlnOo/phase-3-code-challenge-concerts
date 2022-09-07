class Band

  attr_reader :name, :hometown
  attr_writer :name

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

  def self.all
    @@all
  end

  #takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
  def play_in_venue(venue, date)
    Concert.new(date, self, venue)
  end

  #should return an array of all the concerts that the band has played in
  def concerts
    Concert.all.find do |concert|
      concert.band == self
    end
  end

   #returns an array of strings representing all the introductions for this band
  def self.all_introductions
    self.all.each do |band|
      puts "Hello, we are #{band.name} and we're from #{band.hometown}"
    end
  end

end