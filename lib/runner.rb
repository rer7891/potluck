require_relative '../lib/dish'
require_relative '../lib/Potluck'

@dish = Dish.new("Couscous Salad", :appetizer)
@potluck = Potluck.new("7-13-19")
@couscous_salad = Dish.new("Couscous Salad", :appetizer)
@cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
@summer_pizza = Dish.new("Summer Pizza", :appetizer)
@roast_pork = Dish.new("Roast Pork", :entree)
@candy_salad = Dish.new("Candy Salad", :dessert)
@dishes = [@couscous_salad, @cocktail_meatballs]
@potluck.add_dish(@couscous_salad)
@potluck.add_dish(@cocktail_meatballs)
@potluck.add_dish(@summer_pizza)
@potluck.add_dish(@roast_pork)
@potluck.add_dish(@candy_salad)
@bean_dip = Dish.new("Bean Dip", :appetizer)
@potluck.get_all_from_category(:appetizer)

require 'pry'; binding.pry
