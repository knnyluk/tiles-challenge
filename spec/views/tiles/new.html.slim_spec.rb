require 'spec_helper'

describe "tiles/new" do
  before(:each) do
    assign(:tile, stub_model(Tile,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new tile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tiles_path, "post" do
      assert_select "input#tile_name[name=?]", "tile[name]"
    end
  end
end
