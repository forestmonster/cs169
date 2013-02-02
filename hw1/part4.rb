class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  attr_accessor :name, :calories

  def healthy?
    if @calories < 200
      true
    end
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end

  attr_accessor :flavor

  def delicious?
      if @flavor == "black licorice"; false ; else true ; end
  end
end
