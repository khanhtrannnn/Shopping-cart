class Product < ApplicationRecord
  belongs_to :product_type

  has_many :order_items
  has_many :orders, through: :order_items

end
