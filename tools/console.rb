require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

b1 = Band.new("genge", "nonini")
b2 = Band.new("noma", "frasha")
b3 = Band.new("sugar", "ruby")

v1 = Venue.new("kondele", "kisumu")
v2 = Venue.new("cabanas", "nairobi")
v3 = Venue.new("parkcity", "mombasa")


c1 = Concert.new("Jan. 8", b1, v1)
c2 = Concert.new("Feb. 6", b2, v2)
c3 = Concert.new("Mar. 5", b3, v3)
c4 = Concert.new("Apr. 7", b1, v2)
c5 = Concert.new("May. 3", b2, v3)
c6 = Concert.new("Jun. 1", b2, v1)


binding.pry
puts "goodbye"