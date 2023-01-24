# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Biketype.create(biketype: "Adult")
Biketype.create(biketype: "Child")

Category.create(category: "Bakfiets")
Category.create(category: "Racefiets")
Category.create(category: "Mountain-bike")
Category.create(category: "E-bike")
Category.create(category: "Omafiets")
Category.create(category: "Tandem")
Category.create(category: "Ligfiets")
Category.create(category: "Unicycle")
Category.create(category: "Tourfiets")

Color.create(color: "White")
Color.create(color: "Black")
Color.create(color: "Green")
Color.create(color: "Blue")
Color.create(color: "Pink")
Color.create(color: "Red")
Color.create(color: "Purple")
Color.create(color: "Yellow")
Color.create(color: "Brown")
Color.create(color: "Grey")
