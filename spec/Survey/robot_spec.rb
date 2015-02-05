require 'spec_helper'

describe "Robot" do
  let(:robot1){Robot.new(2, 3)}
  it "checks initial position" do
    expect(robot1.initial_pos).to eq([2 ,3])
  end
  
end