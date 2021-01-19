class Trip

    @@all_trips = []

    def self.new_trip(guest, listing)
        @guest = guest
        @listing = listing
        @@all_trips << self
    end
        
    def listing
        # returns the listing object for the trip
        self.listing
    end

    def guest
        # returns the guest object for the trip
        self.guest
    end

    def self.all
        @@all_trips
    end

end

# Methods called by instance
# <instance>.listing: returns the listing object for the trip
# <instance>.guest: returns the guest object for the trip

# Methods called by class
# <Class>.all: returns an array of all trips







