class Bakery

    @@all_bakeries = []
    # takes in name, and passes new bakery into @all_bakeries array
    def initialize(name)
        @@all_bakeries << self
        @name = name
        self
    end


    # returns array of all ingredients used by bakery
    def ingredients
        # method one:
        # Calls Dessert.a
    end

    # returns an array of desserts the bakery makes
    def desserts
        # Method one:
        # calls Dessert class to get the list of desserts the bakery owns
    end

    # average calories per dessert the bakery owns
    def average_calories
        # Calls the dessert class for all desserts
    end

    # returns array of all bakeries
    def self.all
        @@all_bakeries
    end
end