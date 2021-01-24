class Guest
    attr_accessor :name
    @@all_guests = []
    
    def self.new_guest(name)
        @@all_guests << guest = self.new
        guest.add_name(name)
        guest
    end

    def add_name(name)
        @name = name
    end

    def self.all
        @@all_guests
    end
    
    def self.pro_traveller
        #DONE
        # <Class>.pro_traveller: returns an array of all guests who have made over 1 trip
        @@all_guests.collect{|guest| 
            if Trip.all.select{|trip| trip.guest == guest}.count > 1
                guest
            end
        }.compact!
    end
    
    
    def self.find_all_by_name(name)
        # DONE
        # <Class>.find_all_by_name(name):  takes an argument of a name (as a string), returns the all guests with that name
        @@all_guests.select{|guest| guest.name == name }
    end

    def add_listing(listing)
        # When guest is added to listing, call this method from Listing Class
        @listing = listing        
    end

    def listings
        # DONE
        # returns an array of all listings a guest has stayed at
        Trip.all.select{|trip| trip.guest == self}.map{|trip| trip.listing}
    end

    def trips
        #DONE
        # returns an array of all trips a guest has made
        Trip.all.select{|trip| trip.guest.name == self.name}
    end

    def trip_count
        # DONE
        # returns the number of trips a guest has taken
        Trip.all.select{|trip| trip.guest == self}.count
    end
end
