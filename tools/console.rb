require_relative '../config/environment.rb'


def reload
  load '../config/environment.rb'
end


# Bakaries
bakeries = ["Fresh Baguette", "Praline Bakery", "La Bohemia Bakery"].each_with_object([]){|bakery_name, array|
  array << Bakery.new(bakery_name)
}

# Desserts/Ingredients
# Lemon Bread
lemon_bread = Dessert.new(bakeries[0],["blueberries", "lemon", "butter", "sugar", "flour", "eggs"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
  
  # Basic Soft Pretzels
soft_pretzel = Dessert.new(bakeries[0],["flour", "milk", "instant", "yeast", 'salt', 'butter'].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
    
    # Lemon Poppyseed Zucchini Muffins
lemon_zucchini_muffins = Dessert.new(bakeries[0],["zucchini", "brown sugar", "flour", "olive oil", "lemon zest", "poppyseeds"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
      
      # Miracle No Knead Bread
no_knead_bread = Dessert.new(bakeries[1],["flour", "salt", "instant yeast"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
        
        # Cinnamon Sugar Apple Cake
cinnamon_apple_cake = Dessert.new(bakeries[1],["apples", "cinnamon", "sugar", "flour", "butter"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
          
          # One Ingredient Socca
one_ingredient_socca = Dessert.new(bakeries[1],["chickpea flour"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
            
            # Peanut Butter S’mores Bars
peanut_butter_smores_bars = Dessert.new(bakeries[2],["graham crackers", "peanut butter", "marshmallow creme", "chocolate bars", "butter", "vanilla"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
              
              # 3 Ingredient Sweet Potato Crust
sweet_potato_crust = Dessert.new(bakeries[2],["sweet potato", "oats", "egg"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
                
                # Two Person Raspberry Crumbles
raspberry_crumbles = Dessert.new(bakeries[2],["fresh berries", "rolled oats", "lemon juice", "flour", "brown sugar"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})
                  
                  # The Best Soft Chocolate Chip Cookies
chocolate_chip_cookies = Dessert.new(bakeries[2],["chocolate chips", "sugar", "flour", "brown sugar", "vanilla", "butter"].each_with_object([]){|ingredient,array|
  array << Ingredient.new(ingredient,rand(400))
})

salt_one = Ingredient.all[10]
                    
Pry.start