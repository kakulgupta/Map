#Launches the application
class Application

 

  def start
    print "$ "
    input1 = gets.chomp
    print "$ "
    input2 = gets.chomp
    print "$ "
    input3 = gets.chomp

    new_plain = Parser.new(input1)
    starting = Parser.new(input2)
    commands = Parser.new(input3)
    upper_right_cord = new_plain.return_commands
    plain = Plain.new(upper_right_cord[0], upper_right_cord[1])
    robot_cord_init = starting.return_commands
    init_robot = Robot.new(robot_cord_init[0],robot_cord_init[1], robot_cord_init[2])
    commands_list = commands.return_commands
    commands_list.each do |cmd|
      if cmd == "move"
        init_robot.move
      elsif cmd == "right"
        init_robot.move_right
      elsif cmd == "left"
        init_robot.move_left
      end
    end

      puts init_robot.current_pos
     
  end

  def start_test
    parser = Parse.new
    input = Kernel.gets.chomp
    command = parser.return_commands(input)
  end

end