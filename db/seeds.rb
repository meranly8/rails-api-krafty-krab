# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Craft.create(name: "Large Wall Hanger", description: "Large pom pom wall hanger with 2 tones of gray", craft_type: "Pom Poms")

Craft.create(name: "Sunset Bracelet", description: "Sunset colors bracelet with buckle; medium length", date_started: "2021-02-10", craft_type: "Bracelet")

Craft.create(name: "Forest Snood", description: "Forest green seed stitched snood; medium size", date_started: "2018-11-01", date_completed: "2018-11-20", price: 25, date_sold: "2018-12-15", craft_type: "Knit", notes: "Sold as Christmas gift")