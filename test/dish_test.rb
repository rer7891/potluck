require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/dish'

class DishTest < Minitest::Test

  def setup
    @dish = Dish.new("Couscous Salad", :appetizer)
  end
  def test_it_exists
    assert_equal Dish, @dish.class
  end
  def test_it_has_a_name
    assert_equal "Couscous Salad", @dish.name
  end
  def test_it_has_a_category
    assert_equal :appetizer, @dish.category
  end
end
