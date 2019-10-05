class Potluck
  attr_reader :date, :dishes, :menu
  def initialize(date)
    @date = date
    @dishes = []
    @menu = Hash.new
  end
  def add_dish(dish)
    dishes << dish.category
    dishes
  end

end
