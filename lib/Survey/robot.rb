class Robot
  def initialize(xinit, yinit, orientation)
    @xinit = xinit
    @yinit = yinit
    @orientation = orientation
  end

  def initial_pos
    return [@xinit, @yinit, @orientation]
  end
end