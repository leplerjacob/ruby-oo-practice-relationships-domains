class Listing
    
    attr_accessor :city
    @@all_listings = []
    
    def self.new_listing(city = nil)
        @@all_listings << listing = self.new
        city ? listing.listing_city(city) : listing
        listing
    end
    
    def listing_city(city)
        self.city = city
    end
    
    def self.all
        #DONE
        #<Class>.all: returns an array of all listings
        @@all_listings
    end
    
    def self.find_all_by_city(city)
        #DONE
        #<Class>.find_all_by_city(city): takes an argument of a 
        #   city name (as a string) and returns all the listings for that city
        @@all_listings.select{|listing|
            listing.city == city
        }
    end
    
    def trips
        #DONE
        #<instance>.trips: returns an array of all trips at a listing
        Trip.get_trips(self)
    end
    
    def guests
        #DONE
        #<instance>.guests: returns an array of all guests who have stayed at a listing
        Trip.get_guests(self)
    end
    
    def trip_count
        #<instance>.trip_count: returns the number of trips that have been taken to that listing
        self.trips.count
    end
    def self.most_popular
        #<Class>.most_popular: finds the listing that has had the most trips
        @@all_listings.max_by{|listing| 
            Trip.get_trips(listing).count
        }
    end
end