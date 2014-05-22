class Tile
  include Mongoid::Document
  field :name, type: String
  key :name
  references_many :clicks
end
