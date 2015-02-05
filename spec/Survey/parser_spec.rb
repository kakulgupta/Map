require "spec_helper"

describe "Parser" do
  let(:parser1){Parser.new("move left right")}
  it "checks parsing of commands" do 
    expect(parser1.return_commands).to eq(["move", "left", "right"])
  end
end