class Dessert
  def initialize(name, calories)
    # YOUR CODE HERE
  end
  def name=(new_name)
    @name = new_name
  end
  def calories=(new_calories)
    @calories = new_calories
  end
  def name
    @name
  end
  def calories
    @calories
  end
  def healthy?
    # YOUR CODE HERE
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
  end
  def delicious?
    # YOUR CODE HERE
  end
end
