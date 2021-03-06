class Product < ApplicationRecord
  belongs_to :product_type

  has_many :order_items
  has_many :orders, through: :order_items

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

end
