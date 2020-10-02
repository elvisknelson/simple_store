# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

PRODUCTS_TO_CREATE = 676

PRODUCTS_TO_CREATE.times do
  title = Faker::Commerce.product_name
  price = Faker::Commerce.price
  stock_quantity = Faker::Number.between(from: 1, to: 100)
  Product.create(title: title, price: price, stock_quantity: stock_quantity)
end

puts "Created #{Product.count} Products."