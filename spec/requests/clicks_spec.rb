require 'spec_helper'

describe "Click page" do
  describe "GET /top_10", :type => :feature do
    it "should have content 'The top 10 clicks'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit top_10_path
      expect(page).to have_content('The top 10 clicks')
    end
  end
end
