require 'spec_helper'

describe Click do
  
  before do
    @click = Click.new(clicked_on: DateTime.new)
  end

  subject { @click }

  it { should respond_to(:clicked_on) }
  it { should respond_to(:tile) }

  it { should be_valid }
end
