class Potluck
  attr_reader :date, :dishes, :menu, :category_array
  def initialize(date)
    @date = date
    @dishes = []
    @category_array
    @menu = Hash.new
  end
  def add_dish(dish)
    dishes << dish
    dishes.last
  end
  def get_all_from_category(category)
    @category_array = dishes.find_all do |dish|
      dish.category == category
    end
  end
  def potluck_menu
      @menu = Hash.new {|hash, key| hash[key] = []}
      @dishes.each do |dish|
        @menu[dish.category] << dish
      end
      @menu 
  end

  def ratio(category)

  end

end
