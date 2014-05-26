class ClicksController < ApplicationController

  def new
    @click = Click.new
  end

  def create
    time, id = click_params[:clicked_on], click_params[:tile_id]
    raise RuntimeError if ClicksController.random_error?
    respond_to do |format|
      if ClicksWorker.perform_async(time, id)
        format.json { head :no_content }
      else
        format.json { render json: @click.errors, status: :unprocessable_entity }
      end
    end
  end

  def top_10
    @top_10_tiles = Tile.all.sort { |x,y| y.clicks.count <=> x.clicks.count }.take(10)
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def click_params
      params.permit(:clicked_on, :tile_id)
    end

    def self.random_error?(success_chance=0.85)
      rand > success_chance     
    end
end
