# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'faker'
64.times do
  Tile.create(name: Faker::Name.name)  
end
# require 'date'
# Tile.all.each do |t|
#   t.clicks.concat(Array.new(rand(1..99)){Click.create(clicked_on: DateTime.new)})
# end