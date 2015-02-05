#creates a plain from given x, y coordinates
class Plain
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def upper_right
    [@x, @y]
  end

  
end