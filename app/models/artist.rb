class Artist
#
  attr_reader :name, :years_active
  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paint|
      paint.artist == self
    end
  end

  def galleries
    galleries = []
    self.paintings.each do |paint|
      galleries << paint.gallery
    end
    galleries.uniq
  end

  def cities
    cities = []
    self.galleries.each do |gal|
      cities << gal.city
    end
    cities.uniq
  end

  def self.experience
    total = 0
    @@all.each do |artist|
      total += artist.years_active
    end
    total / @@all.length
  end


end
