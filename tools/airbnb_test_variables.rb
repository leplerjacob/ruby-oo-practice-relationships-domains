
# Create listings
dc = Listing.new_listing("Washington D.C.")
chicago = Listing.new_listing("Chicago")
sanfran = Listing.new_listing("San Francisco")

# Create guests
jacob = Guest.new_guest("Jacob")
joshua = Guest.new_guest("Joshua")
zed = Guest.new_guest("Zed")
nyasha = Guest.new_guest("Nyasha")
boonie = Guest.new_guest("Boonie")

# Create Trips
january = Trip.new_trip(jacob,chicago)
february = Trip.new_trip(joshua,dc)
march = Trip.new_trip(zed,sanfran)
april = Trip.new_trip(nyasha, dc)
may = Trip.new_trip(jacob, sanfran)
june = Trip.new_trip(boonie, dc)
