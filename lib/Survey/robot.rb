class Robot
  attr_reader :x, :y, :orientation
  def initialize(x, y, orientation)
    @x = x
    @y = y
    @orientation = orientation
  end

  def initial_pos
    return self  
  end

  def ==(other)
    self.x == other.x
    self.y == other.y
    self.orientation == other.orientation
  end

  def eql?(other)
    self.x == other.x
    self.y == other.y
    self.orientation == other.orientation
  end
end