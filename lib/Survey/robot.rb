#creates a robot and performs move operations
class Robot
  attr_reader :x, :y, :orientation
  def initialize(x, y, orientation)
    @x = x.to_i
    @y = y.to_i
    @orientation = orientation
  end

  def current_pos
    return [@x, @y, @orientation]  
  end

  def move_left(xmax, ymax)

    if @orientation == "east" && @y + 1 <= ymax
      @orientation = "north"
      @y = @y + 1
    elsif @orientation == "west" && @y - 1 >= 0
      @orientation = "south"
      @y = @y - 1
    elsif @orientation == "north" && @x + 1 <= xmax
      @orientation = "west"
      @x = @x + 1
    elsif @orientation == "south" && @x - 1>= 0
      @orientation = "east"
      @x = @x - 1   
    end

    self.current_pos
  end

  def move_right(xmax, ymax)

    if @orientation == "east" && @y - 1 >= 0
      @orientation = "south"
      @y = @y - 1
    elsif @orientation == "west" && @y + 1 <= ymax
      @orientation = "north"
      @y = @y + 1
    elsif @orientation == "north" && @x - 1>= 0
      @orientation = "east"
      @x = @x - 1
    elsif @orientation == "south" && @x + 1 <= xmax
      @orientation = "west"
      @x = @x + 1   
    end

    self.current_pos
  end

   def move(xmax, ymax)

    if @orientation == "east" && @x + 1 <= xmax
      @x = @x + 1
    elsif orientation == "west" && @x - 1>= 0
      @x = @x - 1
    elsif orientation == "north" && @y + 1 <= ymax
      @y = @y + 1
    elsif orientation == "south" && @y - 1 >= 0
      @y = @y - 1  
    end

    self.current_pos
  end

end