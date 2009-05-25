class AddCustomerIdToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :customer_id, :int
  end

  def self.down
    remove_column :orders, :customer_id
  end
end
