class ClicksController < ApplicationController

  def new
    @click = Click.new
  end

  def create
    @click = Click.new(click_params)
    respond_to do |format|
      if @click.save
        # format.html { redirect_to @click, notice: 'click was successfully created.' }
        format.json { head :no_content }
        # format.json { render action: 'show', status: :created, location: @click }
      else
        format.html { render action: 'new' }
        format.json { render json: @click.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def click_params
      params.permit(:clicked_on, :tile_id)
    end
end
