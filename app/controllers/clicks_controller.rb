class ClicksController < ApplicationController

  def new
    @click = Click.new
  end

  def create
    ClicksWorker.perform_async(params)
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def click_params
      params.permit(:clicked_on, :tile_id)
    end

    def self.random_error?(success_chance=0.8)
      rand < success_chance     
    end
end
