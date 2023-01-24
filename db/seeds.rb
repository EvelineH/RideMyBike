# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Biketype.create(name: "Adult")
Biketype.create(name: "Child")

Category.create(name: "Bakfiets")
Category.create(name: "Racefiets")
Category.create(name: "Mountain-bike")
Category.create(name: "E-bike")
Category.create(name: "Omafiets")
Category.create(name: "Tandem")
Category.create(name: "Ligfiets")
Category.create(name: "Unicycle")
Category.create(name: "Tourfiets")

Color.create(name: "White")
Color.create(name: "Black")
Color.create(name: "Green")
Color.create(name: "Blue")
Color.create(name: "Pink")
Color.create(name: "Red")
Color.create(name: "Purple")
Color.create(name: "Yellow")
Color.create(name: "Brown")
Color.create(name: "Grey")
