class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :Name
      t.string :Address
      t.string :TelephoneNumber
      t.string :EMail
      t.string :LoginName
      t.string :Password
      t.string :BillingAddress
      t.string :ShippingAddress
      t.string :CreditNumber
      t.string :SecuirtyNumber
      t.integer :Type
      t.string :Fax
      t.string :ContactPersonName
      t.string :TaxsNumber
      t.string :BussinessName

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
