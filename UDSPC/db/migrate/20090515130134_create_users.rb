class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
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
      t.integer :LevelOfAuthority
      t.integer :Type
      t.string :JobTitle
      t.date :HiringDate

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
