# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Hat", price: 20, image_path: " ", description: "A black hat with a brim.")

Product.create(name: "Shirt", price: 25, image_path: " ",  description: "A plain, white tee.")

Product.create(name: "Shoes", price: 55, image_path: " ", description: "Some sweet hightops with purple highlights and black suede.")

Product.create(name: "Jeans", price: 60, image_path: " ", description: "Tough denim jeans.")

Product.create(name: "Sweatshirt", price: 50, image_path: " ", description: "A large comfy sweatshirt with a hood and everything.")