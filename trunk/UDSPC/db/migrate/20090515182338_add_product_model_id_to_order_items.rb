class AddProductModelIdToOrderItems < ActiveRecord::Migration
  def self.up
    add_column :order_items, :product_model_id, :integer
  end

  def self.down
    remove_column :order_items, :product_model_id
  end
end
