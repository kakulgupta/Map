require 'spec_helper'

describe "Robot" do
  let(:robot1){Robot.new(2, 3, "east")}
  it "checks initial position" do
    expect(robot1.initial_pos).to eq(Robot.new(2, 3, "east"))
  end

  it "checks move left" do
    expect(robot1.move_left).to eq(Robot.new(2, 4, "north"))
  end
end