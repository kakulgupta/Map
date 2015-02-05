require 'spec_helper'

describe "Plain" do
  
  let(:plain1){Plain.new(4, 5)}
  it "Upper right grid coordinates" do
    expect(plain1.upper_right).to eq([4, 5])
  end
end