class ProductModel < ActiveRecord::Base
	belongs_to :product
  has_many :keywords
  has_many :order_items
end
