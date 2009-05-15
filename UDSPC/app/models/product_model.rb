class ProductModel < ActiveRecord::Base
	belongs_to :product
  has_many :keywords
end
