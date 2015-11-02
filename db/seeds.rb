# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

neighborhood_list = [
  [ "Sellwood", "SE" ],
  [ "Pearl District", "NW" ],
  [ "Grant Park", "NE" ],
  [ "Goose Hollow", "SW" ],
  [ "Kenton", "N" ],
]

neighborhood_list.each do |name, quadrant|
  Neighborhood.create( name: name, quadrant: quadrant )
end
