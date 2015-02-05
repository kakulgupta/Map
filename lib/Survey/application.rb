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
    plain = Plain.new(upper_right_cord[0].to_i, upper_right_cord[1].to_i)
    robot_cord_init = starting.return_commands
    init_robot = Robot.new(robot_cord_init[0].to_i, robot_cord_init[1].to_i, robot_cord_init[2])
    commands_list = commands.return_commands
    xmax = upper_right_cord[0].to_i
    ymax = upper_right_cord[1].to_i
    i = 0
    len = commands_list.length
    while i < len do
    
      if commands_list[i] == "move"
        init_robot.move(xmax, ymax)

      elsif commands_list[i] == "right"
        init_robot.move_right(xmax, ymax)

      elsif commands_list[i] == "left"
        init_robot.move_left(xmax, ymax)

      end

      i = i + 1
    end

      puts init_robot.current_pos
     
  end

  def start_test
    parser = Parse.new
    input = Kernel.gets.chomp
    command = parser.return_commands(input)
  end

end