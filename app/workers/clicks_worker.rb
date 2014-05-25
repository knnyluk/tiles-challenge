class ClicksWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(date, id)
    @click = Click.new(clicked_on: date, tile_id: id)
    @click.save
    # puts "this worked"
  end

end