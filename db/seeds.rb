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
require "open-uri"
 puts "cleaning database"
 Product.destroy_all
 User.destroy_all
 puts "creating products"

CATEGORIES = %w[Equipment Clothing]
user1 = User.new(email: "molka@email.com", password: "123456")

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
product = Product.new(
  name: Faker::Commerce.product_name,
  location: Faker::Address.city,
  description: Faker::Lorem.paragraph,
  price: rand(10..100),
  category: CATEGORIES.sample,
  user: user1
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!










puts "done"

# 15.times do
#   product = Product.new(
#     name: Faker::Commerce.product_name,
#     location: Faker::Address.city,
#     description: Faker::Lorem.paragraph,
#     price: rand(10..100),
#     category: CATEGORIES.sample,
#     user: ella
#   )
# end
