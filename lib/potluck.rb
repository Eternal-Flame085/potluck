class Potluck
  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(cat)
    returning_array = []
    counter = 0
    @dishes.length.times do
      returning_array << @dishes[counter] if @dishes[counter].category == cat
      counter += 1
    end
    return returning_array
  end
end
