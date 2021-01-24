class Dessert

    @@all_desserts = []
    def initialize(bakery, ingredients)
        @@all_desserts << self
        @bakery = bakery
        @ingredients = ingredients
    end

    def search_dessert_for_ingredient(ingredient_name)
        self.ingredients.collect{|ingredient| ingredient.name.include?(ingredient_name)}
    end

    # returns array of ingredients for the dessert that calls this method
    def ingredients
        @ingredients
    end 

    # returns the bakery object for dessert that called this method
    def bakery
        @bakery
    end

    # returns total calories for all the ingredients in the dessert that calls this method
    def calories
        @ingredients.sum{|ingredient| ingredient.calories}
    end

    # returns array of all dessert objects made
    def self.all
        @@all_desserts
    end

end    