require 'spec_helper'

describe 'Application' do

  it "test the launch" do
    
    parse = Parser.new("move left right")
    allow(Parser).to receive(:new) { parse }
    allow(Kernel).to receive(:gets) { "move left right" }
    expect(parse).to receive(:parsing).with("move left right")

    app = Application.new
    app.start_test
    
  end

end 