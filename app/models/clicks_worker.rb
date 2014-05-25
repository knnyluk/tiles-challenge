class ClicksWorker
  include Sidekiq::Worker

  def perform(date, id)
    Click.create(clicked_on: date, tile_id: id)
  end

end