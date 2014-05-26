require 'spec_helper'

describe "Game page" do
  describe "GET /games", :type => :feature do
    it "should have content 'I'm done'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit games_index_path
      expect(page).to have_content('I\'m done')
    end
  end
end
