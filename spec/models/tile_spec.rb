require 'spec_helper'

describe Tile do

  before do
    @tile = Tile.new(name: "Test Tile")
  end  

  subject { @tile }

  it { should respond_to(:name) }
  it { should respond_to(:clicks) }
  it { should be_valid }

  it "has name 'Test Tile'" do
    @tile.name.should eq 'Test Tile'
  end

  it "has clicks" do
    click1 = Click.new(clicked_on: DateTime.new)
    click2 = Click.new(clicked_on: DateTime.new)
    @tile.clicks = [click1, click2]
    @tile.clicks.should include(click1)
    @tile.clicks.should include(click2)
  end

end
