class Product < ActiveRecord::Base
	has_many :product_models
	belongs_to :category
end
