class Product < ActiveRecord::Base
	has_many :product_models
  has_many :keywords
  belongs_to :category
end
