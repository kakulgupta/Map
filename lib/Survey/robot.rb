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

  def move_left

    if @orientation == "east"
      @orientation = "north"
      @y = @y + 1
    elsif orientation == "west"
      @orientation = "south"
      @y = @y - 1
    elsif orientation == "north"
      @orientation = "west"
      @x = @x + 1
    elsif orientation == "south"
      @orientation = "east"
      @x = @x - 1   
    end

    return self
  end

  def move_right

    if @orientation == "east"
      @orientation = "south"
      @y = @y - 1
    elsif orientation == "west"
      @orientation = "north"
      @y = @y + 1
    elsif orientation == "north"
      @orientation = "east"
      @x = @x - 1
    elsif orientation == "south"
      @orientation = "west"
      @x = @x + 1   
    end

    return self
  end

end