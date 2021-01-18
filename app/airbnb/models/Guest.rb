class Guest

    @@all_guests = []

    def initialize(name)
        @name = name
        # @@all_guests << self
        puts "I was ran"
    end
    binding.pry
    
    def self.create(name)
        @name = name
        @@all_guests << self
    end

    def self.create_from_csv(file)
        
    end

    def self.all
        @@all_guests
    end

    def self.pro_traveller
        
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