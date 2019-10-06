require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/dish'
require_relative '../lib/potluck'

class PotluckTest < Minitest::Test
  def setup
    @dish = Dish.new("Couscous Salad", :appetizer)
    @potluck = Potluck.new("7-13-19")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)
    @bean_dip = Dish.new("Bean Dip", :appetizer)
    @dishes = [@couscous_salad, @cocktail_meatballs]
  end

  def test_it_exists
    assert_equal Potluck, @potluck.class
  end
  def test_it_has_a_date
    assert_equal "7-13-19", @potluck.date
  end
  def test_dishes_initializes_empty
    assert_equal [], @potluck.dishes
  end
  def test_it_exists_can_hold_dishes
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    assert_equal @potluck.dishes, @dishes
  end
  def test_it_length_of_dishes
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    assert_equal 2, @dishes.length
  end
  def test_it_can_retrieve_from_category
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)
    assert_equal [@couscous_salad, @summer_pizza], @potluck.get_all_from_category(:appetizer)
  end
  def test_it_has_a_name
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)
    potluck_1 = @potluck.get_all_from_category(:appetizer)
    assert_equal "Couscous Salad", potluck_1.first.name
  end
  def test_it_has_a_menu
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)
    potluck_1 = @potluck.potluck_menu
    assert_instance_of Hash, @potluck.menu
  end
  def test_menu_ratio
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@candy_salad)
    potluck_1 = @potluck.potluck_menu
    assert_instance_of 50.0, @potluck.ratio 
  end
end
