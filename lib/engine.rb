require_relative 'commander'
require_relative 'position'
require_relative 'table'
require_relative 'robot'
require_relative 'custom_errors'

Dir[File.join(__dir__, 'commands', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'directions', '*.rb')].each { |file| require file }

class Engine
  attr_reader :inputs

  def initialize
    @robot = Robot.new
    @inputs = []
  end

  def run_command(*commands)
    commander = Commander.new(@robot, commands)
    raise CustomErrors::PlaceRobot unless robot_placed?(commander.command)

    result = commander.run
    @inputs << commander.command
    result
  end

  private

  def robot_placed?(command)
    (@inputs.size.zero? && place_command?(command)) || @inputs.size.positive?
  end

  def place_command?(command)
    command == Commands::Place.identifier
  end
end
