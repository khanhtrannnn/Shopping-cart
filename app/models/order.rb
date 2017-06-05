class Order < ApplicationRecord
  belongs_to :user

  has_many :products
  has_many :orders, through: :order_items
end
