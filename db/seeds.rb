# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Product.destroy_all
Category.destroy_all

csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)
products = CSV.parse(csv_data, headers: true, encoding: 'iso-8859-1')

products.each do |product|
  category = Category.find_or_create_by(name: product["category"])
  category.products.create(title: product["name"], price: product["price"], description: product["description"], stock_quantity: product["stock quantity"])
end