# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create([{name: 'Stanton', location_type: 'Star'}, {name: "Crusader", location_type: 'Planet', parent_id: 1}, {name: "Port Olisar", location_type: 'Station', parent_id: 2}])
Good.create([{name: 'Medical Supplies'}, {name: 'Waste'}])

#initial price report (price of v 3.4.3 - 01.02.2019)
PriceReport.create([{report_type: 'sell', price: 0.01, good_id: 2, location_id: 3}, {report_type: 'sell', price: 17.02, good_id: 1, location_id: 3}])
