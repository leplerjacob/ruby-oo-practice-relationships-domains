class Trip
    attr_accessor :guest, :listing
    @@all_trips = []

    def self.new_trip(guest, listing)
        @@all_trips << trip = self.new
        trip.listing = listing
        trip.guest = guest
        trip
    end

    def guest
        #DONE
        # <instance>.guest: returns the guest object for the trip
        @guest
    end
    
    def self.all
        # DONE
        # <Class>.all: returns an array of all trips
        @@all_trips
    end
    
    def self.get_guests(listing)
        # DONE
        # Returns array of guests for the given listing
        @@all_trips.collect{|trip| trip.listing == listing ? trip.guest : nil }.compact!
    end
    
    def self.get_trips(listing)
        #DONE        
        # Returns array of trips for given listing
        @@all_trips.select{|trip| trip.listing == listing}
    end
    
    def listing
        # DONE
        # <instance>.listing: returns the listing object for the trip
        @listing
    end

end







