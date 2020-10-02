class Product < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :description, length: { in: 10..500 }
  validates :price, numericality: { greater_than: 0 }
  validates :inventory, numericality: { greater_than: 0 }
  
  belongs_to :supplier

  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products

  def is_discounted?
    price <= 20
  end
  def tax
    price * 0.09
  end
  def total
    tax + price
  end

end
