require "minitest/autorun"
require_relative '../lib/dish.rb'

class DishTest < Minitest::Test
  def test_should_exist
    dish = Dish.new("Couscous Salad", :appetizer)
    assert_instance_of Dish, dish
  end

  def test_should_return_name
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal "Couscous Salad", dish.name
  end

  def test_should_return_category
    dish = Dish.new("Couscous Salad", :appetizer)

    assert_equal :appetizer, dish.category
  end
end
