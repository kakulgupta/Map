#Launches the application
class Application

  def initialize
     @robo = Robot.new
  end

  def start
    parser = Parse.new
    print "$ "
    input = gets.chomp
    while input != 'exit' do 
        commands = parser.parsing(input)
        puts 
        print "$ "
        input = gets.chomp
    end
  end

  def start_test
    parser = Parse.new
    input = Kernel.gets.chomp
    command = parser.parsing(input)
  end

end