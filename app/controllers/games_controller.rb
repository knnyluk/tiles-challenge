class GamesController < ApplicationController
  def index
    @tiles = Tile.all.sample(64)
  end
end
