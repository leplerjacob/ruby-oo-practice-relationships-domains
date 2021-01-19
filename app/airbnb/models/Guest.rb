class Guest

    @@all_guests = []

    # not needed
    # def initialize
    # end
    
    def self.new_guest(guest)
        @name = name
        @@all_guests << self
    end

    def self.all
        @@all_guests
    end

    def self.pro_traveller
        # returns an array of all guests who have made over 1 trip
    end

    def self.find_all_by_name(name)
        # takes an argument of a name (as a string), returns all guests with that name
    end

    # When guest is added to listing, call this method from Listing Class
    def add_listing(listing)
        @listing = listing        
    end

    def listings
        # returns an array of all listings a guest has stayed at
        # Calls Listing.<method>
    end

    def trips
        # returns an array of all trips a guest has made
    end

    def trip_count
        # returns the number of trips a guest has taken
    end
end

# Methods called by instance
# <instance>.listings: returns an array of all listings a guest has stayed at
# <instance>.trips: returns an array of all trips a guest has made
# <instance>.trip_count: returns the number of trips a guest has taken

# Methods called by Class
# DONE <Class>.all: returns an array of all guests
# <Class>.pro_traveller: returns an array of all guests who have made over 1 trip
# <Class>.find_all_by_name(name):  takes an argument of a name (as a string), returns the all guests with that name