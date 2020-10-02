class Product < ApplicationRecord
  belongs_to: Category

  validates :title, :price, :stock_quantity, presence: true
end
