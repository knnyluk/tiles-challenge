class Click
  include Mongoid::Document
  field :clicked_on, type: DateTime
  referenced_in :tile
end
