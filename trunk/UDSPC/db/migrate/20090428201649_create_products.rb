class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :Code
      t.string :Name
      t.text :Description
      t.string :ImageURL
      t.string :KeyWords
      t.integer :Category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
