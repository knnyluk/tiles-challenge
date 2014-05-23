class Click
  include Mongoid::Document
  field :clicked_on, type: DateTime
  belongs_to :tile
end
