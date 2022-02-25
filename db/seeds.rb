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
 Booking.destroy_all
 Product.destroy_all
 User.destroy_all
 puts "creating products"

CATEGORIES = %w[Equipment Clothing]
molka = User.new(email: "molka@email.com", password: "123456")


file = URI.open('https://images.pexels.com/photos/914996/pexels-photo-914996.jpeg?cs=srgb&dl=pexels-thomas-laukat-914996.jpg&fm=jpg')
product = Product.new(
  name: "Ice skates",
  location: "Rome, Italy",
  description: "Very good condition,confortable skates.",
  price: rand(10..25),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/2618794/pexels-photo-2618794.jpeg?cs=srgb&dl=pexels-ingo-joseph-2618794.jpg&fm=jpg')
product = Product.new(
  name: "Tennis racket",
  location: "Paris, France",
  description: "Very good condition, tennis racket that gives you the perfect balance between power and feel on every shot",
  price: rand(10..15),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/4609248/pexels-photo-4609248.jpeg?cs=srgb&dl=pexels-jess-loiterton-4609248.jpg&fm=jpg')
product = Product.new(
  name: "Surfboard",
  location: "Barcelona, Spain",
  description: "Great surfboard, medium size",
  price: rand(10..40),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://images.pexels.com/photos/257961/pexels-photo-257961.jpeg?cs=srgb&dl=pexels-pixabay-257961.jpg&fm=jpg')
product = Product.new(
  name: "Ski equipement",
  location: "Chamonix, France",
  description: "Great set of ski equipment for three people",
  price: rand(40..100),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!


file = URI.open ('https://images.pexels.com/photos/5622349/pexels-photo-5622349.jpeg?cs=srgb&dl=pexels-allan-mas-5622349.jpg&fm=jpg')
product = Product.new(
  name: "Skateboard",
  location: "London, Uk",
  description: "Great condition skateboard",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!


file = URI.open('https://images.pexels.com/photos/7364449/pexels-photo-7364449.jpeg?cs=srgb&dl=pexels-cottonbro-7364449.jpg&fm=jpg')
product = Product.new(
  name: "Ladies Ski gloves",
  location: "Chamonix, France",
  description: "Double-layer fleece gloves with lining with 40g Thinsulate insulation for superb warmth",
  price: rand(5..10),
  category: "Clothing",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/8188891/pexels-photo-8188891.jpeg?cs=srgb&dl=pexels-sneep-crew-8188891.jpg&fm=jpg')
product = Product.new(
  name: "Running shoes",
  location: "Madrid, Spain",
  description: "Comfortable and trendy running shoes ",
  price: rand(10..30),
  category: "Clothing",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://img.freepik.com/free-photo/little-girl-cross-country-skiing_1157-45758.jpg?w=2000')
product = Product.new(
  name: "Kids ski equipment ",
  location: "Chamonix, France",
  description: "Protect your little one from the cold with this great Ski Jacket. Constructed with a full front zip concealed with a touch fastening flap and a removable hood.",
  price: rand(5..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!



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

file = URI.open ('https://images.pexels.com/photos/2405649/pexels-photo-2405649.jpeg?cs=srgb&dl=pexels-melvin-wahlin-2405649.jpg&fm=jpg')
product = Product.new(
  name: "Ski outfit",
  location: "Chamonix, France",
  description: "Elevate your look with this Nevica Davos ski outfit. Crafted with full zip fastening and long sleeves, it features a hood and 2 pockets for a classic look. The jacket is designed with a signature logo and is complete with Nevica branding.",
  price: rand(5..60),
  category: "Clothing",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!


file = URI.open ('https://images.pexels.com/photos/3761217/pexels-photo-3761217.jpeg?cs=srgb&dl=pexels-gustav-lundborg-3761217.jpg&fm=jpg')
product = Product.new(
  name: "Ski outfit",
  location: "Chamonix, France",
  description: "Elevate your look with this Nevica Davos ski outfit. Crafted with full zip fastening and long sleeves, it features a hood and 2 pockets for a classic look. The jacket is designed with a signature logo and is complete with Nevica branding.",
  price: rand(5..60),
  category: "Clothing",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://images.pexels.com/photos/311070/pexels-photo-311070.jpeg?cs=srgb&dl=pexels-leroy-filon-311070.jpg&fm=jpg')
product = Product.new(
  name: "Ski jacket",
  location: "Chamonix, France",
  description: "Great condition ski jacket. Crafted with full zip fastening and long sleeves, it features a hood and 2 pockets for a classic look.",
  price: rand(5..20),
  category: "Clothing",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://as1.ftcdn.net/v2/jpg/00/77/89/52/1000_F_77895220_8Zkb2ZhmEYCHnUpho5ekLw2Cxc3CZSTX.jpg')
product = Product.new(
  name: "Kids Ski outfit",
  location: "Chamonix, France",
  description: "Great condition ski outfit. Crafted with full zip fastening and long sleeves, it features a hood and 2 pockets for a classic look. The jacket is designed with a signature logo and is complete with Nevica branding.",
  price: rand(5..15),
  category: "Clothing",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://images.pexels.com/photos/757133/pexels-photo-757133.jpeg?cs=srgb&dl=pexels-chelsey-horne-757133.jpg&fm=jpg')
product = Product.new(
  name: "Surfboards",
  location: "Spain",
  description: "Amazing surfboards, all sizes",
  price: rand(10..100),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://images.pexels.com/photos/4608709/pexels-photo-4608709.jpeg?cs=srgb&dl=pexels-jess-loiterton-4608709.jpg&fm=jpg')
product = Product.new(
  name: "Surfboard",
  location: "Marbella, Spain",
  description: "Great surfboard, Robust and lightweight with 2 wood stringers",
  price: rand(10..60),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/3619972/pexels-photo-3619972.jpeg?cs=srgb&dl=pexels-tarikul-raana-3619972.jpg&fm=jpg')
product = Product.new(
  name: "Kids Bike",
  location: "London, Uk",
  description: "Amazing kids bike, from age 6 and above",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://images.pexels.com/photos/4715314/pexels-photo-4715314.jpeg?cs=srgb&dl=pexels-cottonbro-4715314.jpg&fm=jpg')
product = Product.new(
  name: "kids Skateboard",
  location: "Uk",
  description: "Great board so that your kid can have fun discovering skateboarding starting at age 18 months.",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://images.pexels.com/photos/3423896/pexels-photo-3423896.jpeg?cs=srgb&dl=pexels-mong-mong-3423896.jpg&fm=jpg')
product = Product.new(
  name: "Skateboard",
  location: "Uk",
  description: "This easy-to-handle maple skateboard, is perfect for improving your street or half-pipe skateboarding.",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open ('https://images.pexels.com/photos/6539390/pexels-photo-6539390.jpeg?cs=srgb&dl=pexels-pavel-danilyuk-6539390.jpg&fm=jpg')
product = Product.new(
  name: "Ice Skates Boot",
  location: "London, Uk",
  description: "The perfect figure skate for beginners to intermediate ice skaters, or for general recreational rink use.",
  price: rand(10..15),
  category: "Clothing",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!


file = URI.open ('https://images.pexels.com/photos/100582/pexels-photo-100582.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
product = Product.new(
  name: "Road Bike",
  location: "London, Uk",
  description: "Hit the road. Thisunisex Cross road bike is designed to go as far and fast as your legs will take you. Whether you're on the flat, or going uphill the 7 speed Shimano gears puts you in precise control. The rigid suspension lets you feel the road so much better. The easy to maintain alloy front and rear calliper brakes give you good stopping power. Adjustable handlebars and seat means you can find just the right riding position for you. Perfect for commuting, family fun rides, or as part of your outdoor exercise regime. This bike comes.",
  price: rand(10..45),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!


file = URI.open ('https://images.pexels.com/photos/2591990/pexels-photo-2591990.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
product = Product.new(
  name: "Road Bike",
  location: "London, Uk",
  description: "Hit the road. Thisunisex Cross road bike is designed to go as far and fast as your legs will take you. Whether you're on the flat, or going uphill the 7 speed Shimano gears puts you in precise control. The rigid suspension lets you feel the road so much better. The easy to maintain alloy front and rear calliper brakes give you good stopping power. Adjustable handlebars and seat means you can find just the right riding position for you. Perfect for commuting, family fun rides, or as part of your outdoor exercise regime. This bike comes.",
  price: rand(10..30),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!


file = URI.open('https://images.pexels.com/photos/221247/pexels-photo-221247.jpeg?cs=srgb&dl=pexels-pixabay-221247.jpg&fm=jpg')
product = Product.new(
  name: "Gym weights",
  location: "Madrid, Spain",
  description: "Complete set of gym kettle bell, great for a beginner.",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/175353/pexels-photo-175353.jpeg?cs=srgb&dl=pexels-dietmar-janssen-175353.jpg&fm=jpg')
product = Product.new(
  name: "Kids Bike",
  location:"London, Uk",
  description: "Amazing kids bike, from age 6 to 9",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/6572984/pexels-photo-6572984.jpeg?cs=srgb&dl=pexels-kindel-media-6572984.jpg&fm=jpg')
product = Product.new(
  name: "Golf set",
  location: "Marbella, Spain",
  description: "Complete golf package is well thought out and specifically designed with industry-standard components for long-lasting performance. It is the ideal package to help hit better shots with confidence-inspiring equipment to make you enjoy your round of golf.",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/8224001/pexels-photo-8224001.jpeg?cs=srgb&dl=pexels-rodnae-productions-8224001.jpg&fm=jpg')
product = Product.new(
  name: "Kids tennis Racket",
  location: "London, Uk",
  description: "Very good condition tennis racket , for kids aged from 6 to 10",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/6572954/pexels-photo-6572954.jpeg?cs=srgb&dl=pexels-kindel-media-6572954.jpg&fm=jpg')
product = Product.new(
  name: "Golf set",
  location: "Marbella, Spain",
  description: "Complete golf package is well thought out and specifically designed with industry-standard components for long-lasting performance. It is the ideal package to help hit better shots with confidence-inspiring equipment to make you enjoy your round of golf.",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!

file = URI.open('https://images.pexels.com/photos/4397831/pexels-photo-4397831.jpeg?cs=srgb&dl=pexels-karolina-grabowska-4397831.jpg&fm=jpg')
product = Product.new(
  name: "Gym weights",
  location: "London, Uk",
  description: "Complete set of gym kettle bell, great for a beginner.",
  price: rand(10..20),
  category: "Equipment",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!


file = URI.open ('https://images.pexels.com/photos/7165175/pexels-photo-7165175.jpeg?cs=srgb&dl=pexels-yaroslav-shuraev-7165175.jpg&fm=jpg')
product = Product.new(
  name: "Ski jacket",
  location: "Chamonix, France",
  description: "Amazing ski jacket. Crafted with full zip fastening and long sleeves, it features a hood and 2 pockets for a classic look.",
  price: rand(5..50),
  category: "Clothing",
  user: molka
)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
product.save!


puts "done"