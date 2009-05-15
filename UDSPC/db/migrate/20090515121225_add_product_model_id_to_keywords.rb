class AddProductModelIdToKeywords < ActiveRecord::Migration
  def self.up
    add_column :keywords, :product_model_id, :integer
  end

  def self.down
    remove_column :keywords, :product_model_id
  end
end
