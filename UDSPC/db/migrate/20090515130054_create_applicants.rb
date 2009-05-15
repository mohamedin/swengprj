class CreateApplicants < ActiveRecord::Migration
  def self.up
    create_table :applicants do |t|
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
      t.string :DesieredPosition
      t.string :CurrentPosition
      t.string :Education
      t.text :Experience
      t.text :Notes
      t.date :DateOfBirth
      t.integer :Gender

      t.timestamps
    end
  end

  def self.down
    drop_table :applicants
  end
end
