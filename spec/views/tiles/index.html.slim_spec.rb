require 'spec_helper'

describe "tiles/index" do
  before(:each) do
    assign(:tiles, [
      stub_model(Tile,
        :name => "Name"
      ),
      stub_model(Tile,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
