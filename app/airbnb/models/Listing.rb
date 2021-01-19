class Listing

    @@all_listings = []
    def initialize
        
        @@all_listings << self
    end

    def self.all
        @@all_listings
    end    

    def self.find_all_by_city(city)
        @@all_listings.select{|listing|
            listing.city == city
        }
    end

    # def self.most_popular
    #     @@all_listings.each{|listing|
            
    #     }
    # end

end

# Methods called by instance
#<instance>.guests: returns an array of all guests who have stayed at a listing
#<instance>.trips: returns an array of all trips at a listing
#<instance>.trip_count: returns the number of trips that have been taken to that listing


# Methods called by class
#<Class>.all: returns an array of all listings
#<Class>.find_all_by_city(city): takes an argument of a 
#   city name (as a string) and returns all the listings for that city
#<Class>.most_popular: finds the listing that has had the most trips