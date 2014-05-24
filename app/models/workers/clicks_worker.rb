class ClicksWorker
  include Sidekiq::Worker

def perform
  @click = Click.new(click_params)
    
  respond_to do |format|
    if ClicksController.random_error?
      @click.save
      format.json { head :no_content }
    else
      format.json { render json: @click.errors, status: :unprocessable_entity }
    end
  end
end

end