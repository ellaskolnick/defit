# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.create!(name: "SurfBoard", location: "Sydney", description: "Rent a surfboard", price: "50", category: "Equipment", user: ella)
# Product.create!(name: "Weights", location: "London", description: "Rent a two weights", price: "30", category: "Equipment", user: ella)
# Product.create!(name: "Ski Jacket", location: "France", description: "Rent a ski jacket", price: "40", category: "Clothing", user: ella)

require 'faker'

CATEGORIES = %w[Equipment Clothing]
Product.destroy_all
User.destroy_all
ella = User.create!(username: "ella", email: "ella@email.com", password: "password")

15.times do
  product = Product.new(
    name: Faker::Commerce.product_name,
    location: Faker::Address.city,
    description: Faker::Lorem.paragraph,
    price: rand(10..100),
    category: CATEGORIES.sample,
    user: ella
  )
  product.save!
end
