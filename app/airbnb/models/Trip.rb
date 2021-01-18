class Trip

    @@all_trips = [] 
    def initialize
        
        @@all_trips << self
    end

end

# Methods called by instance
# <instance>.listing: returns the listing object for the trip
# <instance>.guest: returns the guest object for the trip

# Methods called by class
# <Class>.all: returns an array of all trips







