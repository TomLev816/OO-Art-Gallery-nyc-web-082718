require "pry"
# require_relative '../config/environment.rb'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting'


# def reload
#   load 'config/environment.rb'
# end

a1 = Artist.new('nao', 7)
a2 = Artist.new('pamao', 2)
a3 = Artist.new('wabao', 10)
g1 = Gallery.new('Best Gallery', 'NY')
g2 = Gallery.new('Worst Gallery', 'NY')
g3 = Gallery.new('OK Gallery', 'Boston')

p1 = Painting.new('Masterpiece', 'Finger', a1, g1)
p2 = Painting.new('Classis', 'abstract', a1, g2)
p3 = Painting.new('Sucks', 'abstract', a1, g1)
p4 = Painting.new('Wowzers', 'Finger', a2, g2)
p5 = Painting.new('Ahh', 'Finger', a2, g3)
p6 = Painting.new('Best ever', 'Brush', a3, g1)

binding.pry
