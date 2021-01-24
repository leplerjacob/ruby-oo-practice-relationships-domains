class Ingredient
    attr_accessor :name, :calories
    
    @@all_ingredients = []

    # takes in name = string, calories = integer
    def initialize(name, calories)
        @@all_ingredients << self
        @name = name
        @calories = calories
    end

    # should return array of a ll ingredients
    def self.all
        @@all_ingredients
    end
    
    # returns a bakery object for bakery that uses ingredient
    def bakery
        # Search Dessert class
        collection = Dessert.all.collect{|dessert| dessert.bakery if dessert.search_dessert_for_ingredient(self.name)}.uniq!
    end
    
    # takes in string
    # Returns array of all ingredients with a name that includes the string
    def self.find_all_by_name(ingredient_name)
        # Do not search exact matches '=='
        @@all_ingredients.select{|ingredient| ingredient.name.include?(ingredient_name)}
    end 

end