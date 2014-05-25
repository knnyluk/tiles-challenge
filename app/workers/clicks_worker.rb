class ClicksWorker
  include Sidekiq::Worker

  def perform(date, id)
    @click = Click.new(clicked_on: date, tile_id: id)
    @click.save
    # puts "this worked"
  end

end