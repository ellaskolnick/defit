# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ella = User.new(username: "ella", email: "ella@email.com", password: "password")

Product.create!(name: "SurfBoard", location: "Sydney", description: "Rent a surfboard", price: "50", category: "Equipment", user: ella)
Product.create!(name: "Weights", location: "London", description: "Rent a two weights", price: "30", category: "Equipment", user: ella)
Product.create!(name: "Ski Jacket", location: "France", description: "Rent a ski jacket", price: "40", category: "Clothing", user: ella)
