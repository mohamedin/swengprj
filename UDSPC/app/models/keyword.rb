class Keyword < ActiveRecord::Base
    belongs_to :product
    belongs_to :product_model
end
