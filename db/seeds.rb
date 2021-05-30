# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

greenpoint = Neighborhood.create(name: "greenpoint")
williamsburg = Neighborhood.create(name: "williamsburg")
dumbo = Neighborhood.create(name: "dumbo")
flatiron = Neighborhood.create(name: "flatiron")
chelsea = Neighborhood.create(name: "chelsea")

Cocktail.create(title: "Rita Hayworth", description: "herbal twist on a margarita", bar: "Suzy's Bar", neighborhood_id: 1)