require 'spec_helper'

describe "Robot" do
  let(:robot1){Robot.new(2, 3, "east")}
  it "checks current position" do
    expect(robot1.current_pos).to eq([2, 3, "east"])
  end

  it "checks move left" do
    expect(robot1.move_left(5, 5)).to eq([2, 4, "north"])
  end

  it "checks move right" do
    expect(robot1.move_right(5, 5)).to eq([2, 2, "south"])
  end

  it "checks move" do
    expect(robot1.move(3, 3)).to eq([3, 3, "east"])
  end
end