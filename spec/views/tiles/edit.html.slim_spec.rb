require 'spec_helper'

describe "tiles/edit" do
  before(:each) do
    @tile = assign(:tile, stub_model(Tile,
      :name => "MyString"
    ))
  end

  it "renders the edit tile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tile_path(@tile), "post" do
      assert_select "input#tile_name[name=?]", "tile[name]"
    end
  end
end
