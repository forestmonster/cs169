class Dessert
  def initialize(name, calories)
    # YOUR CODE HERE
  end

  def setName(name)
    @name = name
  end

  def setCalories(cal)
    @calories = cal
  end

  def getName
    return @name
  end

  def getCalories(cal)
    return @calories
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
