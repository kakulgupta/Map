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

    self.current_pos
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

    self.current_pos
  end

   def move

    if @orientation == "east"
      @x = @x + 1
    elsif orientation == "west"
      @x = @x - 1
    elsif orientation == "north"
      @y = @y + 1
    elsif orientation == "south"
      @y = @y + 1  
    end

    self.current_pos
  end

end