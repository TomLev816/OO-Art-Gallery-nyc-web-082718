class Gallery
#
  attr_reader :name, :city
  @@all = []

def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

  def self.all
    @@all
  end

  def self.cities
    cities = []
    @@all.each do |gall|
      cities << gall.city
    end
    cities.uniq
  end

  def artist
    artist = []
    Painting.all.each do |paint|
      if self == paint.gallery
        artist << paint.artist
      end
    end
    artist.uniq
  end

  def artist_name
    self.artist.map do |art|
      art.name
    end
  end

  def total_years
    total = 0
    self.artist.each do |art|
      total += art.years_active
    end
    total
  end

end
