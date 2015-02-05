class Parser
  attr_reader :commands
  def initialize(command)
    @commands = command.split
  end

  def return_commands
    @commands
  end
  
end