require 'spec_helper'

describe Tile do

  before do
    @tile = Tile.new(name: "Test Tile")
  end  

  subject { @tile }

  it { should respond_to(:name) }
  it { should respond_to(:clicks) }

  it { should be_valid }

end
