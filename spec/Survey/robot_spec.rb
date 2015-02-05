require 'spec_helper'

describe "Robot" do
  let(:robot1){Robot.new(2, 3, "east")}
  it "checks current_pos position" do
    expect(robot1.current_pos).to eq(Robot.new(2, 3, "east"))
  end

  it "checks move left" do
    expect(robot1.move_left).to eq(Robot.new(2, 4, "north"))
  end

  it "checks move right" do
    expect(robot1.move_right).to eq(Robot.new(2, 2, "south"))
  end

  it "checks move" do
    expect(robot1.move).to eq(Robot.new(3, 3, "east"))
  end
end