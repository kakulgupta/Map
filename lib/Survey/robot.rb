class Robot
  def initialize(xinit, yinit)
    @xinit = xinit
    @yinit = yinit
  end

  def initial_pos
    return [@xinit, @yinit]
  end
end