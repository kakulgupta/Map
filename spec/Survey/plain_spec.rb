require 'spec_helper'

describe "Plain" do
  
  let(:plain1){Plain.new(4, 5)}
  it "Upper right grid coordinates" do
    expect(plain1.upper_right.class).to eq(Plain)
  end
end