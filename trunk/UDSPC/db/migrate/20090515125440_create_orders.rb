class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.timestamp :OrderDate
      t.integer :ConfimationNumber
      t.integer :OrderStatus
      t.decimal :TotalPrice
      t.integer :PaymentMethod
      t.integer :PurchaseNumber
      t.decimal :ShippingCosts

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
