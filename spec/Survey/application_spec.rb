require 'spec_helper'

describe 'Application' do

  it "test the launch" do
    
    parser = Parse.new
    allow(Parse).to receive(:new) { parser }
    allow(Kernel).to receive(:gets) { "move left right" }
    expect(parser).to receive(:parsing).with("move left right")

    app = Application.new
    app.start_test
    
  end

end 